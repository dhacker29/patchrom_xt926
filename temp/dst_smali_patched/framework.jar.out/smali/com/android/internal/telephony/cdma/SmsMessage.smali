.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .parameter "dtmfDigit"

    .prologue
    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x20

    .local v0, asciiDigit:B
    :goto_0
    return v0

    .end local v0           #asciiDigit:B
    :pswitch_0
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createCdmaMsgFromGsmPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 6
    .parameter "pdu"

    .prologue
    const/4 v3, 0x1

    new-array v2, v3, [I

    .local v2, dcs:[I
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting Gsm Pdu:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createMsgFrom3gppSipPdu([B[I)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .local v1, cdmaSms:Lcom/android/internal/telephony/cdma/SmsMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v0

    .local v0, cdmaPdu:[B
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converted CDMA Pdu:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #cdmaPdu:[B
    :goto_0
    return-object v1

    :cond_0
    const-string v3, "CDMA"

    const-string v4, "Failed to convert GSM Pdu to CDMA Pdu"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createCdmaPdusFromGsmPdu([[B)[[B
    .locals 4
    .parameter "gsmPdus"

    .prologue
    array-length v3, p0

    new-array v1, v3, [[B

    .local v1, cdmaPdus:[[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->createCdmaMsgFromGsmPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .local v0, cdmaMsg:Lcom/android/internal/telephony/cdma/SmsMessage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #cdmaMsg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_1
    return-object v1
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    const-string v5, "CDMA"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .local v3, size:I
    new-array v2, v3, [B

    .local v2, pdu:[B
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "CDMA"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5
    .parameter "pdu"

    .prologue
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v2, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "CDMA"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->setEmpty()V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "CDMA"

    const-string v4, "SMS PDU parsing failed with out of memory: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->setEmpty()V

    goto :goto_0
.end method

.method public static createMsgFrom3gppSipPdu([B[I)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 21
    .parameter "pdu"
    .parameter "dcs"

    .prologue
    new-instance v13, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v13}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v13, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v6, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v2, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local v3, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v8

    .local v8, gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v16

    .local v16, scAddr:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    .local v15, orAddr:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v4

    .local v4, dataCodingScheme:I
    const/16 v18, 0x0

    aput v4, p1, v18

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v14

    .local v14, msgBody:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v10

    .local v10, gsmVoiceMailNum:I
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage()Z

    move-result v12

    .local v12, isStatusReportMessage:Z
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v11

    .local v11, gsmuserdata:[B
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    .local v9, gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    if-nez v9, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    :goto_0
    iput-object v6, v13, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_0
    const/16 v18, 0x1003

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    :goto_1
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-byte v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-byte v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-byte v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    if-eqz v15, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseWithAlphabet(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseWithAlphabet(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :cond_1
    if-eqz v12, :cond_9

    const/16 v18, 0x4

    move/from16 v0, v18

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v17, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    shr-int/lit8 v18, v4, 0x2

    and-int/lit8 v18, v18, 0x3

    packed-switch v18, :pswitch_data_0

    :cond_2
    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    :goto_4
    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    iput v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    :cond_5
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .local v5, encodedSms:[B
    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iput-object v2, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v2, v13, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-direct {v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .end local v4           #dataCodingScheme:I
    .end local v5           #encodedSms:[B
    .end local v8           #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v9           #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    .end local v10           #gsmVoiceMailNum:I
    .end local v11           #gsmuserdata:[B
    .end local v12           #isStatusReportMessage:Z
    .end local v13           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v14           #msgBody:Ljava/lang/String;
    .end local v15           #orAddr:Ljava/lang/String;
    .end local v16           #scAddr:Ljava/lang/String;
    .end local v17           #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :goto_5
    return-object v13

    .restart local v4       #dataCodingScheme:I
    .restart local v8       #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .restart local v9       #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v10       #gsmVoiceMailNum:I
    .restart local v11       #gsmuserdata:[B
    .restart local v12       #isStatusReportMessage:Z
    .restart local v13       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local v14       #msgBody:Ljava/lang/String;
    .restart local v15       #orAddr:Ljava/lang/String;
    .restart local v16       #scAddr:Ljava/lang/String;
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v4           #dataCodingScheme:I
    .end local v8           #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v9           #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    .end local v10           #gsmVoiceMailNum:I
    .end local v11           #gsmuserdata:[B
    .end local v12           #isStatusReportMessage:Z
    .end local v14           #msgBody:Ljava/lang/String;
    .end local v15           #orAddr:Ljava/lang/String;
    .end local v16           #scAddr:Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/Exception;
    const-string v18, "CDMA"

    const-string v19, "SIP Pdu decode failed: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    goto :goto_5

    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v4       #dataCodingScheme:I
    .restart local v8       #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .restart local v9       #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v10       #gsmVoiceMailNum:I
    .restart local v11       #gsmuserdata:[B
    .restart local v12       #isStatusReportMessage:Z
    .restart local v14       #msgBody:Ljava/lang/String;
    .restart local v15       #orAddr:Ljava/lang/String;
    .restart local v16       #scAddr:Ljava/lang/String;
    :cond_7
    :try_start_1
    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const/16 v18, 0x1005

    :goto_6
    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    goto/16 :goto_1

    :cond_8
    const/16 v18, 0x1002

    goto :goto_6

    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    goto/16 :goto_2

    .restart local v17       #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :pswitch_0
    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto/16 :goto_3

    :pswitch_1
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto/16 :goto_3

    :pswitch_2
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported SMS data coding scheme "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move-object/from16 v0, v17

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto/16 :goto_3

    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createPdu()V
    .locals 8

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliverEnv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v1

    .local v1, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B

    move-result-object v0

    .local v0, encodedMsg:[B
    if-nez v0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;-><init>()V

    .local v2, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    iput-object v3, v2, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_0
.end method

.method static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v3

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, msgId:I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, nextMsgId:Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return v0

    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"

    .prologue
    const/4 v0, 0x0

    .local v0, cbNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, priority:I
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v5, 0x0

    .local v5, cbNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, priority:I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    const/4 v6, 0x0

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .local v0, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v1, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    const v3, 0xffff

    if-eq p2, v3, :cond_0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSubmitPdu() destPort is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "set userDataHeader to null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {p1, p4, v2, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"

    .prologue
    const/4 v5, 0x0

    .local v5, cbNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, priority:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "timeStamp"

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {p1, p3, v0, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 14
    .parameter "p"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .local v8, subaddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-eqz v10, :cond_0

    const/high16 v10, 0x5

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-ne v10, v11, :cond_2

    :cond_0
    iput v12, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, addressDigitMode:I
    and-int/lit16 v10, v1, 0xff

    int-to-byte v10, v10

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .local v2, count:B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v4, v2, [B

    .local v4, data:[B
    const/4 v6, 0x0

    .local v6, index:I
    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v4, v6

    if-nez v1, :cond_1

    aget-byte v10, v4, v6

    invoke-direct {v7, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v10

    aput-byte v10, v4, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v1           #addressDigitMode:I
    .end local v2           #count:B
    .end local v4           #data:[B
    .end local v6           #index:I
    :cond_2
    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v10, :cond_3

    const/4 v10, 0x2

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    :cond_3
    iput v13, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .restart local v1       #addressDigitMode:I
    .restart local v2       #count:B
    .restart local v4       #data:[B
    .restart local v6       #index:I
    :cond_4
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    iput-byte v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :cond_5
    new-array v4, v2, [B

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_6

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, countInt:I
    if-gez v3, :cond_7

    const/4 v3, 0x0

    :cond_7
    new-array v4, v3, [B

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_8

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v10, v12, :cond_9

    iget v10, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v10, v12, :cond_9

    iget-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v10, v10, v13

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9

    const-string v10, "SmsMessage for NBPCD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PCD formatted address. Converting to ASCII:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {v10}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v9

    .local v9, temp:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const-string v10, "SmsMessage for NBPCD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PCD formatted address used  getAsciiBytes Adding a +:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    const-string v10, "SmsMessage for NBPCD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Increasing number of digits"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #temp:Ljava/lang/String;
    :cond_9
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iput-object v0, v7, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    return-object v7
.end method

.method private parsePdu([B)V
    .locals 11
    .parameter "pdu"

    .prologue
    const/4 v10, 0x1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, dis:Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .local v6, length:I
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    array-length v8, p1

    if-le v6, v8, :cond_0

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > pdu len "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #length:I
    :catch_0
    move-exception v5

    .local v5, ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v5           #ex:Ljava/io/IOException;
    .restart local v6       #length:I
    :cond_0
    :try_start_1
    new-array v8, v6, [B

    iput-object v8, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v8, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v6}, Ljava/io/DataInputStream;->read([BII)I

    iget v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v8, v10, :cond_1

    iget v8, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v8, v10, :cond_1

    iget-object v8, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_1

    iget-object v8, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {v8}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v7

    .local v7, temp:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .end local v7           #temp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .local v2, bearerDataLength:I
    array-length v8, p1

    if-le v2, v8, :cond_2

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > pdu len "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    new-array v8, v2, [B

    iput-object v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v2}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "KDDI"

    const-string v9, "ro.cdma.home.operator.alpha"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const-string v8, ""

    iput-object v8, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 30
    .parameter "pdu"

    .prologue
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v7, bais:Ljava/io/ByteArrayInputStream;
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v10, dis:Ljava/io/DataInputStream;
    new-instance v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v11}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v11, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v3, 0x0

    .local v3, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v21, 0x0

    .local v21, subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    const/4 v13, 0x0

    .local v13, foundParamMask:I
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v22, v21

    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v22, subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v4, v3

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v4, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->available()I

    move-result v27

    if-lez v27, :cond_b

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .local v18, parameterId:I
    const/16 v27, 0x1

    shl-int v16, v27, v18

    .local v16, paramIdBit:I
    and-int v27, v13, v16

    if-eqz v27, :cond_0

    new-instance v27, Ljava/lang/Exception;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "illegal duplicate parameter ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v16           #paramIdBit:I
    .end local v18           #parameterId:I
    :catch_0
    move-exception v12

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v12, ex:Ljava/lang/Exception;
    :goto_1
    const-string v27, "CDMA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v28, "SMS Envelope Parser failed"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v16       #paramIdBit:I
    .restart local v18       #parameterId:I
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_0
    or-int v13, v13, v16

    :try_start_2
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    .local v19, parameterLen:I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .local v17, parameterData:[B
    packed-switch v18, :pswitch_data_0

    new-instance v27, Ljava/lang/Exception;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unsupported parameterId ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    :pswitch_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const-string v27, "CDMA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "teleservice = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_2
    move-object/from16 v22, v21

    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v4, v3

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto :goto_2

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_2
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v5, addrBis:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v27, 0x1

    :try_start_3
    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v15, 0x0

    .local v15, numberType:I
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    iput v15, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v27, v0

    if-nez v27, :cond_1

    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    :cond_1
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v9, v0, [B

    .local v9, data:[B
    const/4 v6, 0x0

    .local v6, b:B
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    if-nez v27, :cond_2

    const/4 v14, 0x0

    .local v14, index:I
    :goto_3
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_4

    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    and-int/lit8 v27, v27, 0xf

    move/from16 v0, v27

    int-to-byte v6, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v27

    aput-byte v27, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .end local v14           #index:I
    :cond_2
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v27, v0

    if-nez v27, :cond_3

    const/4 v14, 0x0

    .restart local v14       #index:I
    :goto_4
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_4

    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v6, v0

    aput-byte v6, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .end local v14           #index:I
    :cond_3
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v15, v0, :cond_6

    const-string v27, "CDMA"

    const-string v28, "TODO: Originating Addr is email id"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    iput-object v9, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v27

    if-eqz v27, :cond_5

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    iget v0, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    const/16 v28, 0x2b

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v26

    .local v26, temp:Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "+"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .end local v26           #temp:Ljava/lang/String;
    :cond_5
    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v27, "CDMA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Originating Addr="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    iput-object v3, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    goto/16 :goto_2

    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_6
    const-string v27, "CDMA"

    const-string v28, "TODO: Originating Addr is data network address"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v6           #b:B
    .end local v9           #data:[B
    .end local v15           #numberType:I
    :catch_1
    move-exception v12

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    goto/16 :goto_1

    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v6       #b:B
    .restart local v9       #data:[B
    .restart local v15       #numberType:I
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_7
    const-string v27, "CDMA"

    const-string v28, "Originating Addr is of incorrect type"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_8
    const-string v27, "CDMA"

    const-string v28, "Incorrect Digit mode"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_9
    iput-object v3, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    goto/16 :goto_2

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5           #addrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v6           #b:B
    .end local v9           #data:[B
    .end local v15           #numberType:I
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_3
    const/16 v27, 0x0

    :try_start_4
    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v23, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v23, subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v21, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    const/16 v27, 0x3

    :try_start_5
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    const/16 v27, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v24

    .local v24, subAddrLen:I
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .local v25, subdata:[B
    const/4 v14, 0x0

    .restart local v14       #index:I
    :goto_6
    move/from16 v0, v24

    if-ge v14, v0, :cond_a

    const/16 v27, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v6, v0

    .restart local v6       #b:B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v27

    aput-byte v27, v25, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .end local v6           #b:B
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14           #index:I
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v23           #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v24           #subAddrLen:I
    .end local v25           #subdata:[B
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_4
    const/16 v27, 0x0

    :try_start_6
    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v20, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v20, replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v27, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v20           #replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_5
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v8, ccBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v27, 0x6

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    iput-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    iput-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    iget-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v27, v0

    if-eqz v27, :cond_11

    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v27

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    move/from16 v0, v27

    iput-byte v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v8           #ccBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v16           #paramIdBit:I
    .end local v17           #parameterData:[B
    .end local v18           #parameterId:I
    .end local v19           #parameterLen:I
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_b
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_1

    new-instance v27, Ljava/lang/Exception;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unsupported SMS Type ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    :pswitch_7
    and-int/lit8 v27, v13, 0x1

    if-nez v27, :cond_c

    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing TELESERVICE_IDENTIFIER parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_c
    and-int/lit8 v27, v13, 0x4

    if-nez v27, :cond_d

    and-int/lit8 v27, v13, 0x10

    if-nez v27, :cond_d

    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing ADDRESS parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    :pswitch_8
    and-int/lit8 v27, v13, 0x2

    if-nez v27, :cond_d

    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing SERVICE_CATEGORY parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27

    :pswitch_9
    and-int/lit16 v0, v13, 0x80

    move/from16 v27, v0

    if-nez v27, :cond_d

    new-instance v27, Ljava/lang/Exception;

    const-string v28, "missing CAUSE_CODES parameter"

    invoke-direct/range {v27 .. v28}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_d
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    :cond_10
    return-void

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v16       #paramIdBit:I
    .restart local v17       #parameterData:[B
    .restart local v18       #parameterId:I
    .restart local v19       #parameterLen:I
    .restart local v23       #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    :catch_3
    move-exception v12

    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_1

    .end local v3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v21           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v23           #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v8       #ccBis:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v22       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_11
    move-object/from16 v21, v22

    .end local v22           #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v21       #subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    move-object v3, v4

    .end local v4           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static privateGetDeliverEnv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .locals 9
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .local v3, origAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v7, 0x1

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    new-instance v6, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v6, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz p3, :cond_2

    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .local v5, ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(Landroid/text/format/Time;)V

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .end local v5           #ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :cond_2
    const/16 v4, 0x1002

    .local v4, teleservice:I
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v1

    .local v1, encodedBearerData:[B
    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v2, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v8, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto :goto_0
.end method

.method private static privateGetSubmitEnv(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .locals 11
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "timeStamp"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .local v1, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eqz p3, :cond_2

    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .local v5, ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(Landroid/text/format/Time;)V

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .end local v5           #ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-boolean p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz p2, :cond_5

    iget-object v6, p2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v6, :cond_4

    move v6, v7

    :goto_1
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    :goto_2
    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v6, :cond_6

    const/16 v4, 0x1005

    .local v4, teleservice:I
    :goto_3
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v2

    .local v2, encodedBearerData:[B
    if-eqz v2, :cond_0

    const-string v6, "CDMA:SMS"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MO (encoded) BearerData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MO raw BearerData = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v3, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v8, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v1, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .end local v2           #encodedBearerData:[B
    .end local v3           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v4           #teleservice:I
    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    goto :goto_2

    :cond_6
    const/16 v4, 0x1002

    goto :goto_3
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"

    .prologue
    const/4 v0, 0x0

    .local v0, cbNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, priority:I
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "timeStamp"

    .prologue
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitEnv(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v1

    .local v1, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B

    move-result-object v0

    .local v0, encodedMsg:[B
    if-nez v0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .local v2, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    iput-object v3, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 14
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .local v3, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v8, mSmsCallbackAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v3, :cond_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local v2, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v11

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-boolean p1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz p3, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :goto_1
    move/from16 v0, p4

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .local v5, encodedBearerData:[B
    const-string v11, "CDMA:SMS"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MO (encoded) BearerData = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MO raw BearerData = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v5, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .end local v5           #encodedBearerData:[B
    :cond_2
    const-string v11, "CDMA"

    const-string v12, "sData.getCallbackNumber cbNumber is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v5       #encodedBearerData:[B
    :cond_3
    iget-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v11, :cond_4

    const/16 v10, 0x1005

    .local v10, teleservice:I
    :goto_2
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v6, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v11, 0x0

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v3, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    const/4 v11, 0x1

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x64

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, dos:Ljava/io/DataOutputStream;
    iget v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v11, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v13, v13

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v11, 0x0

    array-length v12, v5

    invoke-virtual {v4, v5, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    new-instance v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .local v9, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v9, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #dos:Ljava/io/DataOutputStream;
    .end local v9           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/io/IOException;
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating SubmitPdu failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v6           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7           #ex:Ljava/io/IOException;
    .end local v10           #teleservice:I
    :cond_4
    const/16 v10, 0x1002

    goto/16 :goto_2
.end method

.method private static writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B
    .locals 8
    .parameter "envelope"

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, dos:Ljava/io/DataOutputStream;
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    const-string v5, "encode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BearerData.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "encode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BearerData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_1

    :catch_0
    move-exception v3

    .local v3, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "creating Pdu failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected addressConvert()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v3, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v3, v3, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #index:I
    :cond_0
    return-void
.end method

.method public getCallbackNumberAddress()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, output:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_1

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getTeleService()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public kddiGetMessageEncoding()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    return v0
.end method

.method parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    .local v11, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-nez v11, :cond_0

    const-string v0, "CDMA"

    const-string v1, "BearerData.decode() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v9

    :cond_0
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, plmn:Ljava/lang/String;
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, v12}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .local v4, location:Landroid/telephony/SmsCbLocation;
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v2, 0x1

    iget v3, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v8, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iget-object v10, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    move-object v9, v0

    goto :goto_0
.end method

.method public parseSms()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const-string v0, "CDMA:SMS"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT raw BearerData = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT (decoded) BearerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KDDI"

    const-string v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsConvert;->kddiFormatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_9

    const-string v1, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-nez v0, :cond_8

    const-string v0, "also missing"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " userData)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "does have"

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v3, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->setEmpty()V

    const-string v0, "CDMA"

    const-string v1, "nothing to do for gsm message in addition to the memebers of base class"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
