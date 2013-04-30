.class Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;
.super Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowConsumerEmailStrategy"
.end annotation


# instance fields
.field private final CONSUMER_EMAIL_PACKAGES:[Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 3
    .parameter

    .prologue
    .line 5344
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    .line 5345
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.fsck.k9"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.yahoo.mobile.client.android.mail"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.hotmail.Z7"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->CONSUMER_EMAIL_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5344
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getAdministratorPolicy()I
    .locals 1

    .prologue
    .line 5362
    const/16 v0, 0x6d

    return v0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5383
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->CONSUMER_EMAIL_PACKAGES:[Ljava/lang/String;

    return-object v0
.end method

.method protected getPolicyChangedIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 5388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.CONSUMER_EMAIL_ALLOWED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5389
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "policy_name"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5390
    return-object v0
.end method

.method public getPolicyId()I
    .locals 1

    .prologue
    .line 5357
    const/16 v0, 0xa

    return v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5352
    const-class v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 2
    .parameter "administratorApp"

    .prologue
    .line 5367
    if-nez p1, :cond_0

    .line 5368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "administratorApp param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5370
    :cond_0
    iget-boolean v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    return v0
.end method

.method public notifyPolicyChanged()V
    .locals 2

    .prologue
    .line 5403
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v0, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->getPolicyChangedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5404
    return-void
.end method

.method public notifyPolicyChanged(Landroid/content/ComponentName;Z)V
    .locals 2
    .parameter "administratorComponentName"
    .parameter "initialStatus"

    .prologue
    .line 5395
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->getPolicyChangedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5396
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "componet_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5397
    const-string v1, "native_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5398
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v1, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5399
    return-void
.end method

.method public onPolicyChanged(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 5408
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z
    invoke-static {v1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$900(Lcom/motorola/motepm/MotDevicePolicyManagerService;Z)Z

    .line 5409
    return-void

    .line 5408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V
    .locals 2
    .parameter "administratorApp"
    .parameter "enabled"

    .prologue
    .line 5375
    if-nez p1, :cond_0

    .line 5376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "administratorApp param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5378
    :cond_0
    iput-boolean p2, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    .line 5379
    return-void
.end method
