.class public Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;
.super Ljava/lang/Object;
.source "KddiSmsDuplicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    }
.end annotation


# static fields
.field public static final INVALIDATE_MESSAGE_ID:I = -0x1

.field private static final KDDI_DUPLICATE_FILENAME:Ljava/lang/String; = "duplicate_file.dat"

.field private static final KDDI_MESSAGE_DATA_MAX_SIZE:I = 0xc8

.field private static final KDDI_TAG:Ljava/lang/String; = "KDDI_SMS"


# instance fields
.field private mCheckedNum:I

.field private mContext:Landroid/content/Context;

.field private mDuplicateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDuplicatedMessageResponseType:I

.field private mUseFile:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "checkedNum"
    .parameter "useFile"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mCheckedNum:I

    iput-boolean p3, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mUseFile:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicatedMessageResponseType:I

    return-void
.end method

.method private readDuplicateFile()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    .local v11, result:Z
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mContext:Landroid/content/Context;

    const-string v12, "duplicate_file.dat"

    invoke-virtual {v1, v12}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .local v10, fileInput:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v8, din:Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .local v2, messageId:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .local v3, timeStampMillis:J
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .local v5, sendAck:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .local v6, length:I
    const/16 v1, 0xc8

    if-le v6, v1, :cond_0

    const/16 v6, 0xc8

    :cond_0
    new-array v7, v6, [B

    .local v7, data:[B
    const/4 v1, 0x0

    invoke-virtual {v8, v7, v1, v6}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;IJII[B)V

    .local v0, info:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0           #info:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    .end local v2           #messageId:I
    .end local v3           #timeStampMillis:J
    .end local v5           #sendAck:I
    .end local v6           #length:I
    .end local v7           #data:[B
    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/EOFException;
    :try_start_2
    const-string v1, "KDDI_SMS"

    const-string v12, "checkSmsDuplicate() duplicate_file reached EOF "

    invoke-static {v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    const/4 v11, 0x1

    .end local v8           #din:Ljava/io/DataInputStream;
    .end local v9           #e:Ljava/io/EOFException;
    .end local v10           #fileInput:Ljava/io/FileInputStream;
    :goto_1
    return v11

    .restart local v8       #din:Ljava/io/DataInputStream;
    .restart local v10       #fileInput:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    const/4 v11, 0x1

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v8           #din:Ljava/io/DataInputStream;
    .end local v10           #fileInput:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    const-string v1, "KDDI_SMS"

    const-string v12, "checkSmsDuplicate() failed to read duplicate_file "

    invoke-static {v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDuplicatedMessageResponseType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicatedMessageResponseType:I

    return v0
.end method

.method public kddiCheckSmsDuplicate(ILjava/lang/Long;[B)Z
    .locals 12
    .parameter "messageId"
    .parameter "timeStampMillis"
    .parameter "userdata"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .local v4, result:Z
    const/4 v6, 0x0

    .local v6, sameData:Z
    const/4 v2, 0x0

    .local v2, listNum:I
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mUseFile:Z

    if-ne v7, v11, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->readDuplicateFile()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "KDDI_SMS"

    const-string v8, "readDuplicateFile() failed to read duplicate_file "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4           #result:Z
    .local v5, result:I
    :goto_0
    return v5

    .end local v5           #result:I
    .restart local v4       #result:Z
    :cond_0
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    if-eqz v7, :cond_4

    :goto_1
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    .local v0, duplicateInfo:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    iget v7, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    if-ne v7, p1, :cond_2

    iget-wide v7, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mTimeStampMillis:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBody:[B

    .local v3, message:[B
    iget v7, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    array-length v8, p3

    if-ne v7, v8, :cond_2

    const/4 v1, 0x0

    .local v1, index:I
    :goto_2
    iget v7, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    if-ge v1, v7, :cond_2

    aget-byte v7, v3, v1

    aget-byte v8, p3, v1

    if-ne v7, v8, :cond_1

    const/4 v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .end local v1           #index:I
    .end local v3           #message:[B
    :cond_2
    if-ne v6, v11, :cond_5

    .end local v0           #duplicateInfo:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    :cond_3
    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v7, v7, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    iput v7, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicatedMessageResponseType:I

    const/4 v4, 0x1

    :cond_4
    move v5, v4

    .restart local v5       #result:I
    goto :goto_0

    .end local v5           #result:I
    .restart local v0       #duplicateInfo:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public kddiUpdateSmsDuplicate(IJ[BLcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 10
    .parameter "messageID"
    .parameter "timeStampMillis"
    .parameter "messageData"
    .parameter "accessory"

    .prologue
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    :cond_0
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    invoke-virtual {p5}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v5

    array-length v6, p4

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;IJII[B)V

    .local v0, mSmsDuplicateInfo:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mCheckedNum:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mCheckedNum:I

    sub-int/2addr v1, v2

    add-int/lit8 v8, v1, 0x1

    .local v8, exceedsNum:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v8           #exceedsNum:I
    .end local v9           #i:I
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    iget v2, v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicateFile(II)V

    :cond_2
    return-void
.end method

.method public kddiUpdateSmsDuplicateFile(II)V
    .locals 7
    .parameter "sendAck"
    .parameter "messageId"

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    if-ne v4, p2, :cond_2

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iput p1, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mContext:Landroid/content/Context;

    const-string v5, "duplicate_file.dat"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .local v2, fileOutput:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, dout:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget-wide v4, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mTimeStampMillis:J

    invoke-virtual {v0, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBody:[B

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v2           #fileOutput:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    :goto_1
    return-void

    :cond_2
    const-string v4, "KDDI_SMS"

    const-string v5, "KDDIupdateSmsDuplicateFile() MessageID is different "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    const-string v4, "KDDI_SMS"

    const-string v5, "KDDIupdateSmsDuplicateFile() failed to update duplicate_file "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "KDDI_SMS"

    const-string v5, "KDDIupdateSmsDuplicateFile() failed to update duplicate_file "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
