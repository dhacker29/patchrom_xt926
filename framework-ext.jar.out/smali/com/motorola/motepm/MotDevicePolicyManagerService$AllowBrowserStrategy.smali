.class Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;
.super Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowBrowserStrategy"
.end annotation


# instance fields
.field private final BROWSER_PACKAGES:[Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 3
    .parameter

    .prologue
    .line 5293
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    .line 5294
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.apps.chrometophone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.mozilla.firefox_beta"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "org.mozilla.firefox"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.opera.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.opera.mini.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.opera.mini.next.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.opera.mini.android"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->BROWSER_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5293
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getAdministratorPolicy()I
    .locals 1

    .prologue
    .line 5316
    const/16 v0, 0x68

    return v0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5337
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->BROWSER_PACKAGES:[Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyId()I
    .locals 1

    .prologue
    .line 5311
    const/4 v0, 0x5

    return v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5306
    const-class v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 2
    .parameter "administratorApp"

    .prologue
    .line 5321
    if-nez p1, :cond_0

    .line 5322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "administratorApp param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5324
    :cond_0
    iget-boolean v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    return v0
.end method

.method public setPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V
    .locals 2
    .parameter "administratorApp"
    .parameter "enabled"

    .prologue
    .line 5329
    if-nez p1, :cond_0

    .line 5330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "administratorApp param cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5332
    :cond_0
    iput-boolean p2, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    .line 5333
    return-void
.end method
