.class final Lcom/android/internal/telephony/PhoneSubInfo$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneSubInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;Lcom/android/internal/telephony/PhoneSubInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadHandler;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected message code in PhoneSubInfo mainthread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadRequest;

    .local v3, request:Lcom/android/internal/telephony/PhoneSubInfo$MainThreadRequest;
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, onCompleted:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdnNumber(Landroid/os/Message;)V

    goto :goto_0

    .end local v2           #onCompleted:Landroid/os/Message;
    .end local v3           #request:Lcom/android/internal/telephony/PhoneSubInfo$MainThreadRequest;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadRequest;

    .restart local v3       #request:Lcom/android/internal/telephony/PhoneSubInfo$MainThreadRequest;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .local v0, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadRequest;->result:Ljava/lang/Object;

    .end local v0           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_1
    monitor-enter v3

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    const-string v4, "PHONE"

    const-string v5, "Invalid or missing EF[MSISDN] in PhoneSubInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    iput-object v4, v3, Lcom/android/internal/telephony/PhoneSubInfo$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
