.class Lcom/motorola/motepm/MotDevicePolicyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3447
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3450
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3451
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3453
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z
    invoke-static {v1, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$700(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;
    invoke-static {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3456
    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z
    invoke-static {v1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$900(Lcom/motorola/motepm/MotDevicePolicyManagerService;Z)Z

    .line 3459
    :cond_1
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-virtual {v1, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3460
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;
    invoke-static {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1000(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotEPMPhoneStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->registerForPhoneStateIntents()V

    .line 3464
    :cond_2
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {v1, v2, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3467
    :cond_3
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {v1, v2, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v6, [Landroid/content/Intent;

    aput-object p2, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3469
    return-void
.end method
