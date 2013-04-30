.class Lcom/motorola/motepm/MotDevicePolicyManagerService$4;
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
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$4;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$4;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
