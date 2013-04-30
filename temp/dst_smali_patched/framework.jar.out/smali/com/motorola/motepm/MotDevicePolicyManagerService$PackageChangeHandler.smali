.class Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;
.super Landroid/os/AsyncTask;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangeHandler"
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
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, pkg:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    aget-object v2, p1, v5

    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .local v3, packageName:Ljava/lang/String;
    if-nez v3, :cond_0

    :goto_0
    return-object v11

    :cond_0
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1400(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .local v4, packageState:I
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", package state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1500(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1600(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedAppsIncludingPreloadedApps()Ljava/util/List;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1700(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->conflictsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->conflictsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1900(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->conflictsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " conflicts with some policy and will be BLOCKED!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, disablePackageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-virtual {v5, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->disablePackagesSafely(Ljava/util/List;)V

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v8, v8, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040577

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v9, v9, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x10405d8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v5, v7, v8, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$2000(Lcom/motorola/motepm/MotDevicePolicyManagerService;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #disablePackageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #packageState:I
    :goto_1
    :try_start_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v4       #packageState:I
    :cond_3
    :try_start_2
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does NOT conflict with any policy."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v4           #packageState:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #packageState:I
    :cond_4
    :try_start_4
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already disabled, no need to check against any policy."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
