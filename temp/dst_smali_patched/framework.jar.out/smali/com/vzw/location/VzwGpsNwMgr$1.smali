.class Lcom/vzw/location/VzwGpsNwMgr$1;
.super Ljava/lang/Object;
.source "VzwGpsNwMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsNwMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsNwMgr;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$000(Lcom/vzw/location/VzwGpsNwMgr;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$100(Lcom/vzw/location/VzwGpsNwMgr;)I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$200(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "enableSUPL"

    invoke-virtual {v1, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .local v0, rr:I
    packed-switch v0, :pswitch_data_0

    const-string v1, "VzwGpsNwMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enable pdp: errno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$402(Z)Z

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$108(Lcom/vzw/location/VzwGpsNwMgr;)I

    .end local v0           #rr:I
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #rr:I
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #calls: Lcom/vzw/location/VzwGpsNwMgr;->onPdpConnectLocked()V
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$300(Lcom/vzw/location/VzwGpsNwMgr;)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$402(Z)Z

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .end local v0           #rr:I
    :cond_1
    const-string v1, "VzwGpsNwMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t enable pdp after try "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vzw/location/VzwGpsNwMgr$1;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I
    invoke-static {v4}, Lcom/vzw/location/VzwGpsNwMgr;->access$100(Lcom/vzw/location/VzwGpsNwMgr;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
