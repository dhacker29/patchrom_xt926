.class public Lcom/motorola/android/internal/telephony/cdma/KddiSmsConvert;
.super Ljava/lang/Object;
.source "KddiSmsConvert.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KDDI_SMS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 9
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v8, 0x1

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v3, v8, :cond_1

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v6, v6

    const-string v7, "US-ASCII"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v1, strBuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    div-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v2, v3, 0xf

    .local v2, val:I
    if-lt v2, v8, :cond_2

    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-ne v2, v5, :cond_3

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #val:I
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private static kddiConvertCmailIconToAscii([B)[B
    .locals 21
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .local v3, HEART:I
    const/4 v2, 0x1

    .local v2, CUP:I
    const/4 v4, 0x2

    .local v4, TEL:I
    const/4 v5, 0x3

    .local v5, WATCH:I
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v12, v0, [[B

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    aput-object v19, v12, v18

    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    aput-object v19, v12, v18

    const/16 v18, 0x2

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    aput-object v19, v12, v18

    const/16 v18, 0x3

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_3

    aput-object v19, v12, v18

    .local v12, cmailChar:[[B
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v8, v0, [B

    fill-array-data v8, :array_4

    .local v8, asciiHeart:[B
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v7, v0, [B

    fill-array-data v7, :array_5

    .local v7, asciiCup:[B
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v9, v0, [B

    fill-array-data v9, :array_6

    .local v9, asciiTel:[B
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v10, v0, [B

    fill-array-data v10, :array_7

    .local v10, asciiWatch:[B
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, changedCode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v13, 0x0

    .local v13, hasCmailChar:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v14, v0, :cond_6

    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    aget-byte v18, p0, v14

    aget-object v19, v12, v15

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    add-int/lit8 v18, v14, 0x1

    aget-byte v18, p0, v18

    aget-object v19, v12, v15

    const/16 v20, 0x1

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v6, v0, [B

    .local v6, asciiChar:[B
    packed-switch v15, :pswitch_data_0

    :goto_2
    const/16 v16, 0x0

    .local v16, k:I
    :goto_3
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-byte v18, v6, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .end local v16           #k:I
    :pswitch_0
    move-object v6, v8

    goto :goto_2

    :pswitch_1
    move-object v6, v7

    goto :goto_2

    :pswitch_2
    move-object v6, v9

    goto :goto_2

    :pswitch_3
    move-object v6, v10

    goto :goto_2

    .restart local v16       #k:I
    :cond_0
    const/4 v13, 0x1

    .end local v6           #asciiChar:[B
    .end local v16           #k:I
    :cond_1
    if-eqz v13, :cond_4

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    :cond_2
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    aget-byte v18, p0, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsConvert;->kddiIsSJIS([BI)Z

    move-result v18

    if-eqz v18, :cond_5

    add-int/lit8 v14, v14, 0x1

    aget-byte v18, p0, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v18, v14, 0x1

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    add-int/lit8 v14, v14, 0x1

    aget-byte v18, p0, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v15           #j:I
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .local v17, returnCode:[B
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_7

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Byte;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Byte;->byteValue()B

    move-result v18

    aput-byte v18, v17, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    return-object v17

    :array_0
    .array-data 0x1
        0x86t
        0xb2t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x86t
        0xb3t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x86t
        0xb4t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x86t
        0xb5t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x28t
        0x48t
        0x29t
    .end array-data

    :array_5
    .array-data 0x1
        0x28t
        0x43t
        0x29t
    .end array-data

    :array_6
    .array-data 0x1
        0x28t
        0x54t
        0x29t
    .end array-data

    :array_7
    .array-data 0x1
        0x28t
        0x57t
        0x29t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static kddiDecodeExtendSubparam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 2
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .local v0, subparamLen:I
    mul-int/lit8 v1, v0, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public static kddiDecodeShiftJis([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p2, p1}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsConvert;->kddiReplaceUserData([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsConvert;->kddiConvertCmailIconToAscii([B)[B

    move-result-object v0

    .local v0, replaceData:[B
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    const-string v4, "SJIS"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1
.end method

.method public static kddiFormatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 17
    .parameter "bearerData"

    .prologue
    if-eqz p0, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .local v12, ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-object v3, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .local v3, data:[B
    const/4 v7, 0x0

    .local v7, offset:I
    array-length v13, v3

    const/4 v14, 0x2

    if-lt v13, v14, :cond_0

    const/4 v13, 0x0

    aget-byte v13, v3, v13

    if-nez v13, :cond_0

    const/16 v13, 0x70

    const/4 v14, 0x1

    aget-byte v14, v3, v14

    if-ne v13, v14, :cond_0

    add-int/lit8 v7, v7, 0x2

    :cond_0
    iget-object v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v13, v13

    sub-int/2addr v13, v7

    const/4 v14, 0x2

    if-lt v13, v14, :cond_2

    aget-byte v13, v3, v7

    if-nez v13, :cond_2

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, v3, v13

    if-nez v13, :cond_2

    const/16 v13, 0x10

    new-array v8, v13, [B

    fill-array-data v8, :array_0

    .local v8, repKddislamdownData:[B
    const/4 v13, 0x1

    new-array v9, v13, [B

    const/4 v13, 0x0

    const/16 v14, 0x2f

    aput-byte v14, v9, v13

    .local v9, repKddislamdownData2:[B
    const/4 v13, 0x2

    new-array v10, v13, [B

    fill-array-data v10, :array_1

    .local v10, repKddislamdownData3:[B
    const/4 v13, 0x4

    new-array v6, v13, [B

    fill-array-data v6, :array_2

    .local v6, fixedCallbackNumber:[B
    const/16 v13, 0x17

    new-array v11, v13, [B

    .local v11, resultData:[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v8

    invoke-static {v8, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v3

    sub-int/2addr v13, v7

    const/4 v14, 0x4

    if-lt v13, v14, :cond_1

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v13, "00"

    invoke-direct {v4, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v4, df:Ljava/text/DecimalFormat;
    add-int/lit8 v13, v7, 0x2

    aget-byte v13, v3, v13

    int-to-long v13, v13

    invoke-virtual {v4, v13, v14}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .local v2, countValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v13, v14, v11, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    const/16 v14, 0x12

    const/4 v15, 0x1

    invoke-static {v9, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v7, 0x3

    aget-byte v13, v3, v13

    int-to-long v13, v13

    invoke-virtual {v4, v13, v14}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0x13

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v13, v14, v11, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    const/16 v14, 0x15

    const/4 v15, 0x2

    invoke-static {v10, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v2           #countValue:Ljava/lang/String;
    .end local v4           #df:Ljava/text/DecimalFormat;
    :cond_1
    :try_start_0
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    array-length v15, v11

    const-string v16, "SJIS"

    move-object/from16 v0, v16

    invoke-direct {v13, v11, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v1, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v13, 0x1

    iput v13, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    iput-object v6, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    :try_start_1
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsConvert;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .end local v1           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3           #data:[B
    .end local v6           #fixedCallbackNumber:[B
    .end local v7           #offset:I
    .end local v8           #repKddislamdownData:[B
    .end local v9           #repKddislamdownData2:[B
    .end local v10           #repKddislamdownData3:[B
    .end local v11           #resultData:[B
    .end local v12           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    return-void

    .restart local v3       #data:[B
    .restart local v6       #fixedCallbackNumber:[B
    .restart local v7       #offset:I
    .restart local v8       #repKddislamdownData:[B
    .restart local v9       #repKddislamdownData2:[B
    .restart local v10       #repKddislamdownData3:[B
    .restart local v11       #resultData:[B
    .restart local v12       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :catch_0
    move-exception v5

    .local v5, ex:Ljava/io/UnsupportedEncodingException;
    const-string v13, "KDDI_SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SJIS decode failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_1
    move-exception v5

    .restart local v5       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v13, "KDDI_SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "formatSlamdownMessage Addr decode failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :array_0
    .array-data 0x1
        0x93t
        0x60t
        0x8ct
        0xbet
        0x82t
        0xa8t
        0x92t
        0x6dt
        0x82t
        0xe7t
        0x82t
        0xb9t
        0xdt
        0xat
        0x96t
        0xa2t
    .end array-data

    :array_1
    .array-data 0x1
        0x8ct
        0x8ft
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x31t
        0x34t
        0x31t
        0x37t
    .end array-data
.end method

.method private static kddiIsSJIS([BI)Z
    .locals 4
    .parameter "data"
    .parameter "pos"

    .prologue
    const/4 v3, -0x4

    const/4 v0, 0x0

    .local v0, bResult:Z
    const/16 v1, -0x7f

    aget-byte v2, p0, p1

    if-gt v1, v2, :cond_0

    const/16 v1, -0x61

    aget-byte v2, p0, p1

    if-ge v1, v2, :cond_1

    :cond_0
    const/16 v1, -0x20

    aget-byte v2, p0, p1

    if-gt v1, v2, :cond_4

    aget-byte v1, p0, p1

    if-lt v3, v1, :cond_4

    :cond_1
    const/16 v1, 0x40

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-gt v1, v2, :cond_2

    const/16 v1, 0x7e

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-ge v1, v2, :cond_3

    :cond_2
    const/16 v1, -0x80

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-gt v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    if-lt v3, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static kddiReplaceUserData([BII)[B
    .locals 10
    .parameter "data"
    .parameter "numFields"
    .parameter "offset"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    .local v1, newSmsType:[B
    const/4 v5, 0x4

    new-array v4, v5, [[B

    new-array v5, v7, [B

    fill-array-data v5, :array_1

    aput-object v5, v4, v8

    new-array v5, v7, [B

    fill-array-data v5, :array_2

    aput-object v5, v4, v9

    new-array v5, v7, [B

    fill-array-data v5, :array_3

    aput-object v5, v4, v7

    const/4 v5, 0x3

    new-array v6, v7, [B

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    .local v4, smsType:[[B
    array-length v5, p0

    if-lt v5, v7, :cond_0

    aget-byte v5, v1, v8

    aget-byte v6, p0, p2

    if-ne v5, v6, :cond_0

    aget-byte v5, v1, v9

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p0, v6

    if-ne v5, v6, :cond_0

    add-int/lit8 p2, p2, 0x2

    :cond_0
    array-length v5, p0

    sub-int/2addr v5, p2

    if-lt v5, v7, :cond_1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-le v5, v0, :cond_1

    aget-object v5, v4, v0

    aget-byte v5, v5, v8

    aget-byte v6, p0, p2

    if-ne v5, v6, :cond_2

    aget-object v5, v4, v0

    aget-byte v5, v5, v9

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p0, v6

    if-ne v5, v6, :cond_2

    add-int/lit8 p2, p2, 0x2

    .end local v0           #i:I
    :cond_1
    sub-int v3, p1, p2

    .local v3, resultDataLen:I
    new-array v2, v3, [B

    .local v2, resultData:[B
    invoke-static {p0, p2, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .end local v2           #resultData:[B
    .end local v3           #resultDataLen:I
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :array_0
    .array-data 0x1
        0x0t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x2t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x1t
        0x2t
    .end array-data
.end method
