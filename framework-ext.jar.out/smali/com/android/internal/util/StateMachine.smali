.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$1;,
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$ProcessedMessages;,
        Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field public static final SM_INIT_CMD:I = -0x2

.field public static final SM_QUIT_CMD:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1214
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1215
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1217
    .local v0, looper:Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1218
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 1225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1227
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    .line 1204
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1205
    return-void
.end method


# virtual methods
.method protected final addState(Lcom/android/internal/util/State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1258
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 1
    .parameter "state"
    .parameter "parent"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1236
    return-void
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1400(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1310
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " total messages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getProcessedMessagesCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getProcessedMessagesSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1647
    const-string v1, " msg[%d]: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->getProcessedMessageInfo(I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1648
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1650
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentState()Lcom/android/internal/util/IState;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method protected getMessageInfo(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    .line 1593
    const-string v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessedMessageInfo(I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getProcessedMessageInfo(I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1900(Lcom/android/internal/util/StateMachine$SmHandler;I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessedMessagesCount()I
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getProcessedMessagesCount()I
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1800(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v0

    return v0
.end method

.method public final getProcessedMessagesSize()I
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getProcessedMessagesSize()I
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v0

    return v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1327
    return-void
.end method

.method protected halting()V
    .locals 0

    .prologue
    .line 1335
    return-void
.end method

.method public isDbg()Z
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1603
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2200(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2100(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1411
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1443
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1426
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public final quit()V
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->quit()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2000(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected quitting()V
    .locals 0

    .prologue
    .line 1344
    return-void
.end method

.method protected recordProcessedMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 1582
    const/4 v0, 0x1

    return v0
.end method

.method protected final removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    .line 1554
    return-void
.end method

.method public final sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1492
    :goto_0
    return-void

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1538
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1530
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1546
    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1522
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setDbg(Z)V
    .locals 1
    .parameter "dbg"

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2300(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    goto :goto_0
.end method

.method protected final setInitialState(Lcom/android/internal/util/State;)V
    .locals 1
    .parameter "initialState"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1268
    return-void
.end method

.method public final setProcessedMessagesSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->setProcessedMessagesSize(I)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;I)V

    .line 1360
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1630
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    monitor-enter v1

    .line 1631
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2400(Lcom/android/internal/util/StateMachine$SmHandler;)V

    .line 1632
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 1
    .parameter "destState"

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1286
    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1297
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1500(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - unhandledMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_0
    return-void
.end method
