.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field protected emailBody:Ljava/lang/String;

.field protected emailFrom:Ljava/lang/String;

.field protected indexOnIcc:I

.field protected isEmail:Z

.field protected isMwi:Z

.field protected mPdu:[B

.field protected messageBody:Ljava/lang/String;

.field public messageRef:I

.field protected mwiDontStore:Z

.field protected mwiSense:Z

.field protected originatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected pseudoSubject:Ljava/lang/String;

.field protected scAddress:Ljava/lang/String;

.field protected scTimeMillis:J

.field protected statusOnIcc:I

.field protected userData:[B

.field protected userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    return-void
.end method

.method public static getMaxUserDataSeptetsWithHeader(III)I
    .locals 1
    .parameter "msgCount"
    .parameter "singleShift"
    .parameter "lockShift"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMaxUserDataSeptetsWithHeader(IIIZ)I

    move-result v0

    return v0
.end method

.method public static getMaxUserDataSeptetsWithHeader(IIIZ)I
    .locals 5
    .parameter "msgCount"
    .parameter "singleShift"
    .parameter "lockShift"
    .parameter "ifSupportNationalTable"

    .prologue
    const/16 v1, 0xa0

    const/16 v0, 0x99

    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxUserDataSeptetsWithHeader enter... msgCount == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "singleShift == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lockShift == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-le p0, v2, :cond_3

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/16 v0, 0x92

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x95

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_7

    if-nez p1, :cond_4

    if-eqz p2, :cond_6

    :cond_4
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const/16 v0, 0x98

    goto :goto_0

    :cond_5
    const/16 v0, 0x9b

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v2, "( /)|( )"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    goto :goto_0
.end method

.method public abstract getCallbackNumberAddress()Ljava/lang/String;
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    return v0
.end method

.method public abstract getLanguage()I
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
.end method

.method public abstract getMessageId()I
.end method

.method public abstract getMessageType()I
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getPriority()I
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getRecipientAddress()Ljava/lang/String;
.end method

.method public abstract getServiceCategory()I
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    :cond_0
    return-void
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    return-void
.end method
