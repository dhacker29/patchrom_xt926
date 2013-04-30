.class public Lcom/motorola/motepm/policy/UninstallPackagePolicy;
.super Lcom/motorola/motepm/Policy;
.source "UninstallPackagePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const/16 v0, 0x7a

    const-string v1, "uninstall-packages"

    const v2, 0x10405af

    const v3, 0x10405b0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/motepm/Policy;-><init>(ILjava/lang/String;II)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motepm/policy/UninstallPackagePolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .parameter "who"
    .parameter "packageName"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->getActiveAdminForCaller(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 70
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 71
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;

    invoke-direct {v3, p0, p1}, Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;-><init>(Lcom/motorola/motepm/policy/UninstallPackagePolicy;Landroid/content/ComponentName;)V

    .line 72
    .local v3, observer:Lcom/motorola/motepm/policy/UninstallPackagePolicy$PackageDeleteObserver;
    const/4 v0, 0x0

    .line 74
    .local v0, flags:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 76
    .local v1, ident:J
    :try_start_0
    invoke-virtual {v4, p2, v3, v0}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method
