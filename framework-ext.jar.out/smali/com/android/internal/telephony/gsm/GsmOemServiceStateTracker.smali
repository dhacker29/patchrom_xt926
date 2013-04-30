.class Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmOemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_CS:B = 0x1t

.field private static final CALL_TYPE_NONE:B = 0x0t

.field private static final CALL_TYPE_PS:B = 0x2t

.field private static final CALL_TYPE_PS_CS:B = 0x3t

.field private static final CIPHERING_DOMAIN_CS_ONLY:I = 0x1

.field private static final CIPHERING_DOMAIN_CS_PS:I = 0x3

.field private static final CIPHERING_DOMAIN_NO_SRV:I = 0x0

.field private static final CIPHERING_DOMAIN_PS_ONLY:I = 0x2

.field private static final CIPHERING_DOMAIN_UNKNOWN:I = 0x4

.field static final CIPHERING_NOTIFICATION:I = 0x1f41

.field static final DBG:Z = true

.field protected static final EVENT_CS_CIPHERING_QUERY_COMPLETED:I = 0x258

.field private static final EVENT_GET_SIGNAL_STRENGTH_DONE:I = 0x3ec

.field protected static final EVENT_PS_CIPHERING_QUERY_COMPLETED:I = 0x259

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final OEM_CIPHERING_INDICATOR_REQ_DATA:[B

.field static final OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B


# instance fields
.field public mATTContext:I

.field protected final mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

.field public mOldss:Landroid/telephony/SignalStrength;

.field private mUncryptedCall:B

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 61
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_CIPHERING_INDICATOR_REQ_DATA:[B

    return-void

    .line 61
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 63
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x9t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 57
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mATTContext:I

    .line 81
    iput-byte v2, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    .line 121
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;-><init>(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOem:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 128
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 131
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mContext:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 135
    return-void
.end method

.method private handleOEMCmd(I)V
    .locals 2
    .parameter "oemCmd"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOEMCmd oemCmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private notifyCiphering(BZ)V
    .locals 8
    .parameter "callType"
    .parameter "encrypt"

    .prologue
    const/16 v7, 0x1f41

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCiphering mUncryptedCall is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " encrypt :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 425
    if-nez p2, :cond_0

    .line 426
    iget-byte v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    or-int/2addr v5, p1

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    .line 430
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCiphering mUncryptedCall is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 432
    iget-byte v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    if-eqz v5, :cond_1

    .line 433
    const v4, 0x108008a

    .line 434
    .local v4, resId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mContext:Landroid/content/Context;

    const v6, 0x1040552

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, notificationText:Ljava/lang/String;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10900d5

    invoke-direct {v1, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 438
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v5, 0x1020046

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 441
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 443
    const v5, 0x108008a

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 444
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 447
    .local v2, notification:Landroid/app/Notification;
    const-string v5, "Notify Ciphering notification. "

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 448
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 454
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v1           #contentView:Landroid/widget/RemoteViews;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #notificationText:Ljava/lang/String;
    .end local v4           #resId:I
    :goto_1
    return-void

    .line 428
    :cond_0
    iget-byte v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mUncryptedCall:B

    goto :goto_0

    .line 450
    :cond_1
    const-string v5, "Clear Ciphering notification. "

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 451
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private pollState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aput v2, v0, v2

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 342
    return-void
.end method

.method private pollStateDone()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "GSM"

    const-string v1, "Poll ServiceState done: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "GSM"

    const-string v1, "GsmServiceStateTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public getCipheringIndicator(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_CIPHERING_INDICATOR_REQ_DATA:[B

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 380
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "oldss"
    .parameter "ss"

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter in getSignalStrength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 366
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOldss:Landroid/telephony/SignalStrength;

    .line 368
    const-string v0, "GsmOemServiceStateTracker::getSignalStrength Send OEM request raw"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B

    const/16 v2, 0x3ec

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 372
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 149
    const/4 v2, 0x0

    .line 159
    .local v2, cipheringInd:I
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 261
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled message with number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 164
    :sswitch_0
    const-string v8, "Received case EVENT_GET_SIGNAL_STRENGTH_DONE"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 166
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v7, v8

    check-cast v7, [B

    .line 168
    .local v7, states:[B
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_3

    .line 169
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get Signal Strength error or byte array length < 3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v8, ""

    goto :goto_1

    .line 174
    :cond_3
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/telephony/SignalStrength;

    .line 175
    .local v6, ss:Landroid/telephony/SignalStrength;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 176
    .local v1, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    mul-int/lit8 v5, v8, -0x1

    .line 177
    .local v5, sigStrength:I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    mul-int/lit8 v3, v8, -0x1

    .line 178
    .local v3, ecno_ber:I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 179
    .local v4, rat:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received OEM values: sigStrength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ecno_ber="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v6, v4, v5, v3}, Landroid/telephony/SignalStrength;->setOemSignalStrength(III)V

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received OEM signal strength"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 186
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOldss:Landroid/telephony/SignalStrength;

    invoke-virtual {v8, v6}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 187
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    goto/16 :goto_0

    .line 195
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #buf:Ljava/nio/ByteBuffer;
    .end local v3           #ecno_ber:I
    .end local v4           #rat:I
    .end local v5           #sigStrength:I
    .end local v6           #ss:Landroid/telephony/SignalStrength;
    .end local v7           #states:[B
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v7, v8

    check-cast v7, [B

    .line 197
    .restart local v7       #states:[B
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive msg EVENT_PS_CIPHERING_QUERY_COMPLETED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_6

    .line 200
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get Ciphering indicator error or byte array length < 2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v8, ""

    goto :goto_2

    .line 205
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ciphering domain is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-byte v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 206
    const/4 v8, 0x1

    aget-byte v2, v7, v8

    .line 207
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 211
    :pswitch_0
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    goto/16 :goto_0

    .line 215
    :pswitch_1
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    goto/16 :goto_0

    .line 222
    :pswitch_2
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    goto/16 :goto_0

    .line 227
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v7           #states:[B
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 228
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v7, v8

    check-cast v7, [B

    .line 229
    .restart local v7       #states:[B
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive msg EVENT_CS_CIPHERING_QUERY_COMPLETED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_7

    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_9

    .line 232
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get Ciphering indicator error or byte array length < 2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v8, ""

    goto :goto_3

    .line 237
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ciphering domain is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-byte v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 238
    const/4 v8, 0x1

    aget-byte v2, v7, v8

    .line 239
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 243
    :pswitch_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    goto/16 :goto_0

    .line 247
    :pswitch_4
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    goto/16 :goto_0

    .line 254
    :pswitch_5
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    goto/16 :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_2
        0x259 -> :sswitch_1
        0x3ec -> :sswitch_0
    .end sparse-switch

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 293
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->cancelPollState()V

    .line 325
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_0
    return-void

    .line 299
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 305
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    .line 307
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v1, v4

    if-nez v1, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->pollStateDone()V

    goto :goto_0
.end method

.method protected hangupAndPowerOff()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 476
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmOemServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 471
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmOemServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public queryCSCiphering(Lcom/android/internal/telephony/Phone$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOFM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    const-string v0, "notifyCSCiphering Ciphering indication setting in SIM/USIM is disabled."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 413
    :cond_2
    const-string v0, "Query current CS ciphering indicator. "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 414
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->getCipheringIndicator(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public queryPSCiphering()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOFM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    const-string v0, "notifyPSCiphering: Ciphering indication setting in SIM/USIM is disabled."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->notifyCiphering(BZ)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    const-string v0, "Query current PS ciphering indicator. "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 396
    const/16 v0, 0x259

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->getCipheringIndicator(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method
