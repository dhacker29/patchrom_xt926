.class Lcom/vzw/location/VzwLocationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v3, "VzwLocationMgrService"

    const-string v4, "action==null in BroadcastReceiver.onReceive()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, uid:I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/vzw/location/VzwLocationManagerService;->access$1600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/vzw/location/VzwLocationManagerService;->access$1600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v3}, Lcom/vzw/location/VzwLocationManagerService;->access$1300(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_UidRemoved(I)V

    goto :goto_0

    .end local v2           #uid:I
    :cond_3
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, noConnectivity:Z
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #setter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v5, v3}, Lcom/vzw/location/VzwLocationManagerService;->access$1702(Lcom/vzw/location/VzwLocationManagerService;I)I

    :goto_1
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1300(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v5

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v6}, Lcom/vzw/location/VzwLocationManagerService;->access$1700(Lcom/vzw/location/VzwLocationManagerService;)I

    move-result v6

    if-ne v6, v7, :cond_5

    :goto_2
    invoke-virtual {v5, v3}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_NetworkStateUpdate(Z)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #setter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v5, v7}, Lcom/vzw/location/VzwLocationManagerService;->access$1702(Lcom/vzw/location/VzwLocationManagerService;I)I

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method
