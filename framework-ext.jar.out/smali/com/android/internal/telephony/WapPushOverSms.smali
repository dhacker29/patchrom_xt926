.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;,
        Lcom/android/internal/telephony/WapPushOverSms$Injector;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field mAddress:Ljava/lang/String;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 52
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 122
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 123
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 126
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 36
    .parameter "pdu"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 142
    const/16 v19, 0x0

    .line 143
    .local v19, index:I
    add-int/lit8 v20, v19, 0x1

    .end local v19           #index:I
    .local v20, index:I
    aget-byte v33, p1, v19

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    .line 144
    .local v30, transactionId:I
    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    aget-byte v33, p1, v20

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 145
    .local v25, pduType:I
    const/16 v16, 0x0

    .line 147
    .local v16, headerLength:I
    const/16 v33, 0x6

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    const/16 v33, 0x7

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    .line 150
    const/16 v33, 0x1

    .line 370
    :goto_0
    return v33

    .line 153
    :cond_0
    new-instance v33, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v33

    if-nez v33, :cond_1

    .line 163
    const/16 v33, 0x2

    goto :goto_0

    .line 165
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v16, v0

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int/lit8 v19, v33, 0x2

    .line 168
    move/from16 v17, v19

    .line 182
    .local v17, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v33

    if-nez v33, :cond_2

    .line 184
    const/16 v33, 0x2

    goto :goto_0

    .line 187
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    .line 188
    .local v24, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    .line 189
    .local v8, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int v19, v19, v33

    .line 191
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 192
    .local v15, header:[B
    const/16 v33, 0x0

    array-length v0, v15

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    if-eqz v24, :cond_3

    .line 199
    const-string v33, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, arrSemicolon:[Ljava/lang/String;
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "string Content-Type="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "arrSemicolon array size="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    array-length v0, v5

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v33, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, arrSpace:[Ljava/lang/String;
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "string Content-Type="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "arrSpace array size="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    array-length v0, v6

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v33, 0x0

    aget-object v33, v5, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x0

    aget-object v34, v6, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    const/16 v33, 0x0

    aget-object v24, v5, v33

    .line 208
    .end local v5           #arrSemicolon:[Ljava/lang/String;
    .end local v6           #arrSpace:[Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v24, :cond_7

    const-string v33, "application/vnd.wap.coc"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 210
    move-object/from16 v23, p1

    .line 217
    .local v23, intentData:[B
    :goto_2
    const/16 v31, 0x0

    .line 225
    .local v31, wapAppId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    add-int v34, v19, v16

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v19

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v4, v0

    .line 228
    .local v4, appIdIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v31

    .line 231
    if-nez v31, :cond_4

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 235
    :cond_4
    if-nez v24, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 240
    .local v11, contentType:Ljava/lang/String;
    :goto_3
    const/16 v28, 0x1

    .line 241
    .local v28, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v32

    .line 243
    .local v32, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v32, :cond_9

    .line 263
    :cond_5
    :goto_4
    if-nez v28, :cond_a

    .line 264
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 205
    .end local v4           #appIdIndex:I
    .end local v11           #contentType:Ljava/lang/String;
    .end local v23           #intentData:[B
    .end local v28           #processFurther:Z
    .end local v31           #wapAppId:Ljava/lang/String;
    .end local v32           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    .restart local v5       #arrSemicolon:[Ljava/lang/String;
    .restart local v6       #arrSpace:[Ljava/lang/String;
    :cond_6
    const/16 v33, 0x0

    aget-object v24, v6, v33

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/WapPushOverSms$Injector;->checkFirewallForWapPush(Lcom/android/internal/telephony/WapPushOverSms;[B)Z

    move-result v22

    if-eqz v22, :cond_miui_0

    const/16 v22, -0x1

    return v22
    ########### method end

    :cond_miui_0
    goto :goto_1

    .line 212
    .end local v5           #arrSemicolon:[Ljava/lang/String;
    .end local v6           #arrSpace:[Ljava/lang/String;
    :cond_7
    add-int v13, v17, v16

    .line 213
    .local v13, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    sub-int v33, v33, v13

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 214
    .restart local v23       #intentData:[B
    const/16 v33, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v13, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .end local v13           #dataIndex:I
    .restart local v4       #appIdIndex:I
    .restart local v31       #wapAppId:Ljava/lang/String;
    :cond_8
    move-object/from16 v11, v24

    .line 235
    goto :goto_3

    .line 246
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v28       #processFurther:Z
    .restart local v32       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_9
    :try_start_1
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v22, intent:Landroid/content/Intent;
    const-string v33, "transactionId"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v33, "pduType"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v33, "header"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 250
    const-string v33, "data"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 251
    const-string v33, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v33, "subscription"

    const-string v22, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v11, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v27

    .local v27, procRet:I
    and-int/lit8 v33, v27, 0x1

    if-lez v33, :cond_5

    const v33, 0x8000

    and-int v33, v33, v27

    if-nez v33, :cond_5

    const/16 v28, 0x0

    goto/16 :goto_4

    .end local v22           #intent:Landroid/content/Intent;
    .end local v27           #procRet:I
    .end local v32           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v33

    .end local v4           #appIdIndex:I
    .end local v11           #contentType:Ljava/lang/String;
    .end local v28           #processFurther:Z
    :cond_a
    if-nez v24, :cond_b

    const/16 v33, 0x2

    goto/16 :goto_0

    :cond_b
    const-string v12, ""

    .local v12, contentURI:Ljava/lang/String;
    const-string v21, ""

    .local v21, initiatorURI:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, done:Z
    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    :goto_5
    if-nez v14, :cond_10

    add-int v33, v17, v16

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    add-int/lit8 v19, v20, 0x1

    .end local v20           #index:I
    .restart local v19       #index:I
    aget-byte v18, p1, v20

    .local v18, headerValue:B
    sparse-switch v18, :sswitch_data_0

    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "warning: unknown header value="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", index="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    :goto_6
    move/from16 v20, v19

    .end local v19           #index:I
    .restart local v20       #index:I
    goto :goto_5

    .end local v20           #index:I
    .restart local v19       #index:I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentLocation(I)Z

    move-result v33

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int v19, v19, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_c
    const-string v33, "WAP PUSH"

    const-string v34, "warning:  failure on  decodeContentLocation"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_6

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapInitiatorURI(I)Z

    move-result v33

    if-eqz v33, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int v19, v19, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    goto :goto_6

    :cond_d
    const-string v33, "WAP PUSH"

    const-string v34, "warning:  failure on  decodeXWapInitiatorURI"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_6

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentLength(I)Z

    move-result v33

    if-eqz v33, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int v19, v19, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v10, v0

    .local v10, contentLength:I
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "contentLength ="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", index="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v10           #contentLength:I
    :cond_e
    const-string v33, "WAP PUSH"

    const-string v34, "warning:  failure on decodeContentLength "

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto/16 :goto_6

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v33

    if-eqz v33, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v33

    add-int v19, v19, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v29, v0

    .local v29, pushFlag:I
    const-string v33, "WAP PUSH"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "pushFlag ="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", index="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v29           #pushFlag:I
    :cond_f
    const-string v33, "WAP PUSH"

    const-string v34, "warning:  failure on  decode-PUSH_FLAG"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto/16 :goto_6

    .end local v18           #headerValue:B
    .end local v19           #index:I
    .restart local v20       #index:I
    :cond_10
    const-string v33, "application/vnd.wap.mms-message"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11

    const-string v26, "android.permission.RECEIVE_MMS"

    .local v26, permission:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x111002b

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .local v7, bMmsNotificationReceiveEnabled:Z
    if-nez v7, :cond_12

    const-string v33, "WAP PUSH"

    const-string v34, "Mms Notification discarded!"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x1

    move/from16 v19, v20

    .end local v20           #index:I
    .restart local v19       #index:I
    goto/16 :goto_0

    .end local v7           #bMmsNotificationReceiveEnabled:Z
    .end local v19           #index:I
    .end local v26           #permission:Ljava/lang/String;
    .restart local v20       #index:I
    :cond_11
    const-string v26, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v26       #permission:Ljava/lang/String;
    :cond_12
    new-instance v22, Landroid/content/Intent;

    const-string v33, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v22       #intent:Landroid/content/Intent;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v33, "transactionId"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v33, "pduType"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v33, "header"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v33, "data"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v33, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    const-string v33, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v33, "appId"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v33, "contentURI"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v33, "initiatorURI"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 370
    const/16 v33, -0x1

    move/from16 v19, v20

    .end local v20           #index:I
    .restart local v19       #index:I
    goto/16 :goto_0

    .line 285
    :sswitch_data_0
    .sparse-switch
        -0x73 -> :sswitch_2
        -0x50 -> :sswitch_0
        -0x4f -> :sswitch_1
        -0x4c -> :sswitch_3
    .end sparse-switch
.end method

.method public dispatchWapPdu([BLjava/lang/String;)I
    .locals 1
    .parameter "pdu"
    .parameter "address"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getSmsDispatcher()Lcom/android/internal/telephony/SMSDispatcher;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    return-object v0
.end method
