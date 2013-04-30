.class Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;
.super Landroid/os/AsyncTask;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    aget-object v2, p1, v5

    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    sget-object v5, Lcom/motorola/motepm/Policy;->POLICIES_BY_BROADCAST:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/motepm/Policy;

    .local v4, policy:Lcom/motorola/motepm/Policy;
    invoke-virtual {v4, v2}, Lcom/motorola/motepm/Policy;->onBroadcastReceived(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #policy:Lcom/motorola/motepm/Policy;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method
