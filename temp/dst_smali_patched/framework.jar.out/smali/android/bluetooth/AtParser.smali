.class public Landroid/bluetooth/AtParser;
.super Ljava/lang/Object;
.source "AtParser.java"


# static fields
.field private static final TYPE_ACTION:I = 0x0

.field private static final TYPE_READ:I = 0x1

.field private static final TYPE_SET:I = 0x2

.field private static final TYPE_TEST:I = 0x3


# instance fields
.field private mBasicHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mConcomittantHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandConcomitantHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mExtHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"

    .prologue
    const/16 v5, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, out:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-ne v0, v5, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, j:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v0           #c:C
    .end local v2           #j:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .restart local v0       #c:C
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #j:I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 4
    .parameter "ch"
    .parameter "input"
    .parameter "fromIndex"

    .prologue
    const/16 v3, 0x22

    move v1, p2

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-ne v0, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .end local v0           #c:C
    :goto_1
    return v2

    .restart local v0       #c:C
    :cond_0
    if-ne v0, p0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method private static findEndExtendedName(Ljava/lang/String;I)I
    .locals 3
    .parameter "input"
    .parameter "index"

    .prologue
    move v1, p1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    :cond_2
    sparse-switch v0, :sswitch_data_0

    .end local v0           #c:C
    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_1

    const/16 v5, 0x2c

    invoke-static {v5, p0, v2}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v3

    .local v3, j:I
    if-nez v3, :cond_0

    const/4 v5, 0x0

    .end local v3           #j:I
    :goto_1
    return-object v5

    .restart local v3       #j:I
    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, arg:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method private static isAtoZ(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 21
    .parameter "raw_input"

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/bluetooth/AtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, input:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "A/"

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v17

    if-eqz v17, :cond_1

    new-instance v12, Ljava/lang/String;

    .end local v12           #input:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v12       #input:Ljava/lang/String;
    :goto_0
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    :cond_0
    :goto_1
    return-object v15

    :cond_1
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, iter:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, entry:Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    .local v14, key:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/AtCommandConcomitantHandler;

    move-object/from16 v9, v17

    check-cast v9, Landroid/bluetooth/AtCommandConcomitantHandler;

    .local v9, handler:Landroid/bluetooth/AtCommandConcomitantHandler;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandConcomitantHandler;->handleCommand(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .end local v8           #entry:Ljava/util/Map$Entry;
    .end local v9           #handler:Landroid/bluetooth/AtCommandConcomitantHandler;
    .end local v14           #key:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    const-string v18, "AT"

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v17

    if-nez v17, :cond_5

    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    :cond_5
    const/4 v11, 0x2

    .local v11, index:I
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .local v15, result:Landroid/bluetooth/AtCommandResult;
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, c:C
    invoke-static {v5}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v17

    if-eqz v17, :cond_7

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, args:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/AtCommandHandler;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandHandler;->handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    :cond_6
    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .end local v4           #args:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v5, v0, :cond_10

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/bluetooth/AtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v10

    .local v10, i:I
    invoke-virtual {v12, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, commandName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/AtCommandHandler;

    .local v9, handler:Landroid/bluetooth/AtCommandHandler;
    const/16 v17, 0x3b

    move/from16 v0, v17

    invoke-static {v0, v12, v11}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v7

    .local v7, endIndex:I
    if-lt v10, v7, :cond_9

    const/16 v16, 0x0

    .local v16, type:I
    :goto_3
    packed-switch v16, :pswitch_data_0

    :goto_4
    invoke-virtual {v15}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v17

    if-nez v17, :cond_0

    move v11, v7

    goto/16 :goto_2

    .end local v16           #type:I
    :cond_9
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v16, 0x1

    .restart local v16       #type:I
    goto :goto_3

    .end local v16           #type:I
    :cond_a
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ge v0, v7, :cond_c

    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v16, 0x3

    .restart local v16       #type:I
    goto :goto_3

    .end local v16           #type:I
    :cond_b
    const/16 v16, 0x2

    .restart local v16       #type:I
    goto :goto_3

    .end local v16           #type:I
    :cond_c
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_d

    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    :cond_d
    const/16 v16, 0x2

    .restart local v16       #type:I
    goto :goto_3

    .end local v16           #type:I
    :cond_e
    const/16 v16, 0x0

    .restart local v16       #type:I
    goto :goto_3

    :pswitch_0
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    :pswitch_3
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/AtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .local v4, args:[Ljava/lang/Object;
    if-nez v4, :cond_f

    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v9, v4}, Landroid/bluetooth/AtCommandHandler;->handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .end local v4           #args:[Ljava/lang/Object;
    .end local v6           #commandName:Ljava/lang/String;
    .end local v7           #endIndex:I
    .end local v9           #handler:Landroid/bluetooth/AtCommandHandler;
    .end local v10           #i:I
    .end local v16           #type:I
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandConcomitantHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
