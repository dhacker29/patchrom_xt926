.class public Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VzwGpsNwMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsNwMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VzwGpsNwMgrReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsNwMgr;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 185
    iget-object v4, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    monitor-enter v4

    .line 186
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 197
    .local v2, serviceState:Landroid/telephony/ServiceState;
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$000(Lcom/vzw/location/VzwGpsNwMgr;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/vzw/location/VzwGpsNwMgr;->access$400()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    const/4 v5, 0x1

    #calls: Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V
    invoke-static {v3, v5}, Lcom/vzw/location/VzwGpsNwMgr;->access$600(Lcom/vzw/location/VzwGpsNwMgr;Z)V

    .line 234
    .end local v2           #serviceState:Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 235
    return-void

    .line 203
    :cond_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 210
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 211
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #calls: Lcom/vzw/location/VzwGpsNwMgr;->onPdpConnectLocked()V
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$300(Lcom/vzw/location/VzwGpsNwMgr;)V

    goto :goto_0

    .line 234
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 217
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$402(Z)Z

    .line 218
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mMode:I
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$700(Lcom/vzw/location/VzwGpsNwMgr;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    const/4 v5, 0x0

    #calls: Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V
    invoke-static {v3, v5}, Lcom/vzw/location/VzwGpsNwMgr;->access$600(Lcom/vzw/location/VzwGpsNwMgr;Z)V

    goto :goto_0

    .line 224
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v3, "com.android.internal.vzwlocation.nwmgr.ALARM_TIMEOUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget-object v5, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$900(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v6, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsNwMgr;->access$800(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 228
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    const/4 v6, 0x0

    #setter for: Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I
    invoke-static {v3, v6}, Lcom/vzw/location/VzwGpsNwMgr;->access$1002(Lcom/vzw/location/VzwGpsNwMgr;I)I

    .line 229
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;

    move-result-object v3

    iget-object v6, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsNwMgr;->access$1100(Lcom/vzw/location/VzwGpsNwMgr;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$200(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/net/ConnectivityManager;

    move-result-object v3

    const/4 v6, 0x0

    const-string v7, "enableSUPL"

    invoke-virtual {v3, v6, v7}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 232
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
