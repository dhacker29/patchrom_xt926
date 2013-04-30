.class Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallPackagePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/policy/UninstallPackagePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final mWho:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/motorola/motepm/policy/UninstallPackagePolicy;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/policy/UninstallPackagePolicy;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter "who"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;->this$0:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;->mWho:Landroid/content/ComponentName;

    .line 31
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 37
    iget-object v3, p0, Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;->this$0:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    #calls: Lcom/motorola/motepm/policy/UninstallPackagePolicy;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->access$000(Lcom/motorola/motepm/policy/UninstallPackagePolicy;)Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 44
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 53
    :pswitch_0
    const/4 v2, -0x1

    .line 57
    .local v2, resultCode:I
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.app.action.ACTION_APP_UNINSTALLATION_RESULT_RETURN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "package_name"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v3, "result_code"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #resultCode:I
    :pswitch_1
    const/4 v2, 0x1

    .line 47
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 49
    .end local v2           #resultCode:I
    :pswitch_2
    const/4 v2, -0x2

    .line 50
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
