.class Lcom/android/server/pm/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5575
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5577
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v10, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5579
    new-instance v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v5, v10}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 5580
    .local v5, res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v10, p0, Lcom/android/server/pm/PackageManagerService$5;->val$currentStatus:I

    iput v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5581
    const/4 v10, -0x1

    iput v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 5582
    const/4 v10, 0x0

    iput-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 5583
    new-instance v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v10}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    iput-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 5584
    iget v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v10, v8, :cond_0

    .line 5585
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 5586
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5587
    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v13, 0x1

    #calls: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v11, v12, v13, v5}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 5588
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5589
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v12, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 5595
    :cond_0
    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v10, :cond_4

    move v7, v8

    .line 5596
    .local v7, update:Z
    :goto_0
    if-nez v7, :cond_5

    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_5

    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v10, :cond_5

    move v2, v8

    .line 5604
    .local v2, doRestore:Z
    :goto_1
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v10, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v8, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 5605
    :cond_1
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v6, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v11, v6, 0x1

    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 5607
    .local v6, token:I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v10, v11, v5}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 5608
    .local v1, data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5611
    iget v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v10, v8, :cond_2

    if-eqz v2, :cond_2

    .line 5616
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 5618
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_6

    .line 5622
    :try_start_1
    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10, v6}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5635
    :goto_2
    const v10, 0xf4308

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    iget-object v12, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v12, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5639
    .end local v0           #bm:Landroid/app/backup/IBackupManager;
    :cond_2
    if-nez v2, :cond_3

    .line 5643
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v6, v9}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 5644
    .local v4, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5646
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    return-void

    .line 5588
    .end local v1           #data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2           #doRestore:Z
    .end local v6           #token:I
    .end local v7           #update:Z
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_4
    move v7, v9

    .line 5595
    goto :goto_0

    .restart local v7       #update:Z
    :cond_5
    move v2, v9

    .line 5596
    goto :goto_1

    .line 5625
    .restart local v0       #bm:Landroid/app/backup/IBackupManager;
    .restart local v1       #data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v2       #doRestore:Z
    .restart local v6       #token:I
    :catch_0
    move-exception v3

    .line 5626
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "PackageManager"

    const-string v11, "Exception trying to enqueue restore"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5627
    const/4 v2, 0x0

    .line 5628
    goto :goto_2

    .line 5630
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    const-string v10, "PackageManager"

    const-string v11, "Backup Manager not found!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    const/4 v2, 0x0

    goto :goto_2

    .line 5623
    :catch_1
    move-exception v10

    goto :goto_2
.end method
