.class Lcom/vzw/location/VzwGpsReqMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "VzwGpsReqMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsReqMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsReqMgr;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsReqMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/vzw/location/VzwGpsReqMgr$1;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$1;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #getter for: Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$500(Lcom/vzw/location/VzwGpsReqMgr;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$1;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #getter for: Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$500(Lcom/vzw/location/VzwGpsReqMgr;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "action==null in BroadcastReceiver::onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 137
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 143
    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr$1;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    monitor-enter v2

    .line 144
    :try_start_2
    const-string v1, "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$1;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #getter for: Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$600(Lcom/vzw/location/VzwGpsReqMgr;)Lcom/vzw/location/VzwLocationProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->stop()Z

    .line 151
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 147
    :cond_2
    :try_start_3
    const-string v1, "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$1;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #calls: Lcom/vzw/location/VzwGpsReqMgr;->startFixLocked()V
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$700(Lcom/vzw/location/VzwGpsReqMgr;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method
