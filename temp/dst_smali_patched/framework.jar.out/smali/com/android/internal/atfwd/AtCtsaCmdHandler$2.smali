.class Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;
.super Landroid/os/Handler;
.source "AtCtsaCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCtsaCmdHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;->this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;

    .local v9, cmd:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    const-string v3, "AtCtsaCmdHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command de-queued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->getEvents()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, obj:Ljava/lang/Object;
    instance-of v3, v14, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    if-eqz v3, :cond_1

    move-object v12, v14

    check-cast v12, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    .local v12, evt:Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;
    :try_start_0
    invoke-virtual {v12}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    .local v10, e:Ljava/lang/InterruptedException;
    const-string v3, "AtCtsaCmdHandler"

    const-string v4, "PauseEvent interrupted"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v10           #e:Ljava/lang/InterruptedException;
    .end local v12           #evt:Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;
    :cond_1
    instance-of v3, v14, Landroid/view/MotionEvent;

    if-nez v3, :cond_2

    const-string v3, "AtCtsaCmdHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unkown event of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, time:J
    move-object v15, v14

    check-cast v15, Landroid/view/MotionEvent;

    .local v15, oev:Landroid/view/MotionEvent;
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .local v11, ev:Landroid/view/MotionEvent;
    invoke-virtual {v15}, Landroid/view/MotionEvent;->recycle()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;->this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/atfwd/AtCtsaCmdHandler;->injectPointerEvent(Landroid/view/MotionEvent;Z)V
    invoke-static {v3, v11, v4}, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->access$000(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
