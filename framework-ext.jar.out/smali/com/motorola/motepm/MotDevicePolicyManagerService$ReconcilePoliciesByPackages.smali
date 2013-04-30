.class Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;
.super Landroid/os/AsyncTask;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReconcilePoliciesByPackages"
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
    .line 3561
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3561
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3561
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 3565
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    monitor-enter v3

    .line 3566
    const/4 v1, 0x0

    .line 3570
    .local v1, reconciled:Z
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1500(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;

    move-result-object v0

    .line 3571
    .local v0, packagesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->isPolicyAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3572
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3574
    :cond_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3575
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3577
    :cond_1
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1900(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->isPolicyAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3578
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1900(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3580
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3581
    const/4 v1, 0x1

    .line 3582
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-virtual {v2, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->disablePackagesSafely(Ljava/util/List;)V

    .line 3585
    :cond_3
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1600(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3586
    const/4 v1, 0x1

    .line 3587
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;
    invoke-static {v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$2100(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;

    move-result-object v4

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListLocked(Ljava/util/List;)V
    invoke-static {v2, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$2200(Lcom/motorola/motepm/MotDevicePolicyManagerService;Ljava/util/List;)V

    .line 3590
    :cond_4
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policies by package reconciled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    monitor-exit v3

    .line 3592
    const/4 v2, 0x0

    return-object v2

    .line 3591
    .end local v0           #packagesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
