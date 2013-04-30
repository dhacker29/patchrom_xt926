.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
.super Ljava/lang/Object;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedCkpdCmd"
.end annotation


# instance fields
.field private mDialnum:Ljava/lang/StringBuilder;

.field private mEvents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

.field private mPauseTime:J

.field private mPressTime:J

.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    .locals 2
    .parameter
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->parse_cmd()V

    return-void
.end method

.method private call(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    const-string v2, "AtCkpdCmdHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the callee number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, teluri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, startcall:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v2, v2, Lcom/android/internal/atfwd/AtCmdBaseHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isDTMFkey(C)Z
    .locals 1
    .parameter "key"

    .prologue
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse_cmd()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    invoke-virtual {v1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v20

    .local v20, tokens:[Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v1, v0

    if-eqz v1, :cond_0

    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    const-string v2, "Must provide 1 to three tokens"

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v20, v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .local v16, keys:[C
    const/4 v1, 0x0

    aget-object v1, v20, v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    .local v18, orig:[C
    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v20, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    :try_start_1
    aget-object v1, v20, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    const/4 v14, 0x0

    .local v14, instring:Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .local v19, theString:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v12, v1, :cond_10

    if-eqz v14, :cond_6

    aget-char v1, v16, v12

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v1, v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mKcm:Landroid/view/KeyCharacterMap;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v11

    .local v11, events:[Landroid/view/KeyEvent;
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v11, :cond_4

    move-object v9, v11

    .local v9, arr$:[Landroid/view/KeyEvent;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_7

    aget-object v15, v9, v13

    .local v15, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v1, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v9           #arr$:[Landroid/view/KeyEvent;
    .end local v11           #events:[Landroid/view/KeyEvent;
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v14           #instring:Z
    .end local v15           #keyEvent:Landroid/view/KeyEvent;
    .end local v17           #len$:I
    .end local v19           #theString:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .local v10, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong arg2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v10

    .restart local v10       #e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong arg3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v20, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v10           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #events:[Landroid/view/KeyEvent;
    .restart local v12       #i:I
    .restart local v14       #instring:Z
    .restart local v19       #theString:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find all keycodes for string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v11           #events:[Landroid/view/KeyEvent;
    :cond_5
    aget-char v1, v18, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    aget-char v1, v16, v12

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_8

    const/4 v14, 0x1

    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_8
    aget-char v1, v16, v12

    const/16 v2, 0x22

    if-eq v1, v2, :cond_7

    aget-char v1, v16, v12

    const/16 v2, 0x57

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    aget-char v1, v16, v12

    const/16 v2, 0x53

    if-ne v1, v2, :cond_a

    const-string v1, "AtCkpdCmdHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->call(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    aget-char v1, v16, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->isDTMFkey(C)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    aget-char v2, v16, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    aget-char v1, v16, v12

    const/16 v2, 0x45

    if-ne v1, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v1, v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->telephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_c

    const-string v1, "AtCkpdCmdHandler"

    const-string v2, "telephony is null,failed to end the call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mDialnum:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    new-instance v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd$1;-><init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;)V

    invoke-virtual {v1}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd$1;->start()V

    goto/16 :goto_2

    :cond_d
    aget-char v1, v16, v12

    const/16 v2, 0x25

    if-ne v1, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v7

    const/16 v8, 0x35

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v7

    const/16 v8, 0x35

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x3b

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v1

    aget-char v2, v16, v12

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v18, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v7

    aget-char v8, v16, v12

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v7

    aget-char v8, v16, v12

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    return-void
.end method


# virtual methods
.method public getEvents()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    return-object v0
.end method
