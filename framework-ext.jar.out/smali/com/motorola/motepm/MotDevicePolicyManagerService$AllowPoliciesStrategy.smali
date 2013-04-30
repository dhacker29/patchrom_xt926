.class abstract Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;
.super Ljava/lang/Object;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AllowPoliciesStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 5106
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5106
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public conflictsWith(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 5158
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5159
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->containsPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5160
    const/4 v0, 0x1

    .line 5165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsPackage(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 5148
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPackages()[Ljava/lang/String;

    move-result-object v1

    .line 5149
    .local v1, policiesPackages:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 5150
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5151
    const/4 v2, 0x1

    .line 5154
    :goto_1
    return v2

    .line 5149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5154
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public abstract getAdministratorPolicy()I
.end method

.method public abstract getPackages()[Ljava/lang/String;
.end method

.method public getPackagesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5169
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPackages()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPolicyChangedIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 5115
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPolicyId()I
.end method

.method public abstract getPolicyName()Ljava/lang/String;
.end method

.method public abstract getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
.end method

.method public isPolicyAllowed()Z
    .locals 6

    .prologue
    .line 5119
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    monitor-enter v3

    .line 5120
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v2, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 5121
    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5122
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPolicyAllowed - policy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not allowed by at least one of the admins."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5123
    const/4 v2, 0x0

    monitor-exit v3

    .line 5128
    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v2

    .line 5127
    :cond_1
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPolicyAllowed - policy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " allowed by all admin."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 5129
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPolicyAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "administratorComponentName"

    .prologue
    const/4 v1, 0x1

    .line 5133
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    monitor-enter v3

    .line 5134
    if-nez p1, :cond_0

    .line 5135
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "administratorComponentName param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5144
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5138
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5139
    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPolicyAllowed - policy="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " admin="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " admin valid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_2

    move v2, v1

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " allowed?="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 5139
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public notifyPolicyChanged()V
    .locals 0

    .prologue
    .line 5113
    return-void
.end method

.method public notifyPolicyChanged(Landroid/content/ComponentName;Z)V
    .locals 0
    .parameter "administratorComponentName"
    .parameter "initialStatus"

    .prologue
    .line 5114
    return-void
.end method

.method public onPolicyChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 5116
    return-void
.end method

.method public abstract setPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V
.end method
