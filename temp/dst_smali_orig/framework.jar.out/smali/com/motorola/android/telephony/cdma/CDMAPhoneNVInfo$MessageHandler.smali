.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;
.super Landroid/os/Handler;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/4 v5, 0x5

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    const-string v4, "PhoneNVInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMAPhoneVNINfo get msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->MSG_TIMEOUT:I

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/4 v5, 0x6

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$300(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Landroid/os/Message;

    move-result-object v4

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->sleep()V

    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000016

    if-ne v4, v5, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .local v2, reqId:Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v3, v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>([B)V

    .local v3, resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    iget-object v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v4, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$600(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .end local v3           #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    :try_start_2
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v3       #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToInteger(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)I

    move-result v5

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$702(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToBool(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Z

    move-result v5

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Z)Z

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToString(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$1002(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;[B)[B

    goto :goto_1

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #reqId:Ljava/lang/Integer;
    .end local v3           #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000015

    if-ne v4, v5, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .restart local v2       #reqId:Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_4

    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v3, v4, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>([BZ)V

    .restart local v3       #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .end local v3           #resp:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_4
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #reqId:Ljava/lang/Integer;
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000018

    if-ne v4, v5, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .local v1, rawdata:[Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    .end local v1           #rawdata:[Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    :try_start_4
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_7
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000019

    if-ne v4, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .restart local v1       #rawdata:[Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    aget-object v5, v1, v8

    #setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    .end local v1           #rawdata:[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    :try_start_5
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
