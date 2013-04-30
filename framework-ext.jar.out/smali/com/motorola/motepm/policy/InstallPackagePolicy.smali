.class public Lcom/motorola/motepm/policy/InstallPackagePolicy;
.super Lcom/motorola/motepm/Policy;
.source "InstallPackagePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    const/16 v0, 0x79

    const-string v1, "install-packages"

    const v2, 0x10405ad

    const v3, 0x10405ae

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/motepm/Policy;-><init>(ILjava/lang/String;II)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motepm/policy/InstallPackagePolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 8
    .parameter "who"
    .parameter "packageUri"
    .parameter "flags"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->getActiveAdminForCaller(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 171
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 172
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 173
    .local v6, uri:Landroid/net/Uri;
    new-instance v4, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;

    invoke-direct {v4, p0, p1}, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;-><init>(Lcom/motorola/motepm/policy/InstallPackagePolicy;Landroid/content/ComponentName;)V

    .line 174
    .local v4, observer:Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;
    const/4 v0, 0x0

    .line 175
    .local v0, auxFlags:I
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, installerPackageName:Ljava/lang/String;
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_0

    .line 178
    or-int/lit8 v0, v0, 0x1

    .line 181
    :cond_0
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_1

    .line 182
    or-int/lit8 v0, v0, 0x2

    .line 185
    :cond_1
    and-int/lit8 v7, p3, 0x8

    if-eqz v7, :cond_2

    .line 186
    or-int/lit8 v0, v0, 0x8

    .line 189
    :cond_2
    and-int/lit8 v7, p3, 0x10

    if-eqz v7, :cond_3

    .line 190
    or-int/lit8 v0, v0, 0x10

    .line 193
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 195
    .local v1, ident:J
    :try_start_0
    invoke-virtual {v5, v6, v4, v0, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v7

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method
