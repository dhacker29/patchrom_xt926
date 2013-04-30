.class Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;
.super Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowTextMessagingStrategy"
.end annotation


# instance fields
.field private final TEXT_MESSAGE_PACKAGES:[Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 3
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.motorola.messaging"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->TEXT_MESSAGE_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getAdministratorPolicy()I
    .locals 1

    .prologue
    const/16 v0, 0x69

    return v0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, textMessagePackagesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1400(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .local v3, installedAppsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$1400(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.permission.SEND_SMS"

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->TEXT_MESSAGE_PACKAGES:[Ljava/lang/String;

    array-length v5, v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v0, v5, [Ljava/lang/String;

    .local v0, allowPoliciesPackages:[Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->TEXT_MESSAGE_PACKAGES:[Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->TEXT_MESSAGE_PACKAGES:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v5, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v8, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->TEXT_MESSAGE_PACKAGES:[Ljava/lang/String;

    array-length v6, v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v5, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getPolicyId()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    return v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 2
    .parameter "administratorApp"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "administratorApp param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    return v0
.end method

.method public onPolicyChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.devicemanagement.MOTOROLA_DPM_DISABLE_TEXT_MESSAGING_SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v2, "EXTRA_MOTOROLA_DPM_DISABLE_TEXT_MESSAGING_SENDTO"

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v1, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V
    .locals 2
    .parameter "administratorApp"
    .parameter "enabled"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "administratorApp param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p2, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    return-void
.end method
