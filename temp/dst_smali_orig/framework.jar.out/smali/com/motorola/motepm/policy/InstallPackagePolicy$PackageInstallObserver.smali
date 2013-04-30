.class Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "InstallPackagePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/policy/InstallPackagePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final mWho:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/motorola/motepm/policy/InstallPackagePolicy;


# direct methods
.method public constructor <init>(Lcom/motorola/motepm/policy/InstallPackagePolicy;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter "who"

    .prologue
    iput-object p1, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->this$0:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->mWho:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    iget-object v3, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->this$0:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    #calls: Lcom/motorola/motepm/policy/InstallPackagePolicy;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->access$000(Lcom/motorola/motepm/policy/InstallPackagePolicy;)Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sparse-switch p2, :sswitch_data_0

    const/16 v2, -0x6e

    .local v2, resultCode:I
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.app.action.ACTION_APP_INSTALLATION_RESULT_RETURN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "package_name"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "result_code"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #resultCode:I
    :sswitch_0
    const/4 v2, 0x1

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_1
    const/4 v2, -0x1

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_2
    const/4 v2, -0x2

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_3
    const/4 v2, -0x3

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_4
    const/4 v2, -0x4

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_5
    const/4 v2, -0x5

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_6
    const/4 v2, -0x6

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_7
    const/4 v2, -0x7

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_8
    const/4 v2, -0x8

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_9
    const/16 v2, -0x9

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_a
    const/16 v2, -0xa

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_b
    const/16 v2, -0xb

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_c
    const/16 v2, -0xc

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_d
    const/16 v2, -0xd

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_e
    const/16 v2, -0xe

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_f
    const/16 v2, -0xf

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_10
    const/16 v2, -0x10

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_11
    const/16 v2, -0x11

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_12
    const/16 v2, -0x12

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_13
    const/16 v2, -0x13

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_14
    const/16 v2, -0x14

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_15
    const/16 v2, -0x15

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_16
    const/16 v2, -0x16

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_17
    const/16 v2, -0x17

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_18
    const/16 v2, -0x18

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_19
    const/16 v2, -0x64

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_1a
    const/16 v2, -0x65

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_1b
    const/16 v2, -0x66

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_1c
    const/16 v2, -0x67

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_1d
    const/16 v2, -0x68

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_1e
    const/16 v2, -0x69

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_1f
    const/16 v2, -0x6a

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_20
    const/16 v2, -0x6b

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_21
    const/16 v2, -0x6c

    .restart local v2       #resultCode:I
    goto :goto_1

    .end local v2           #resultCode:I
    :sswitch_22
    const/16 v2, -0x6d

    .restart local v2       #resultCode:I
    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6d -> :sswitch_22
        -0x6c -> :sswitch_21
        -0x6b -> :sswitch_20
        -0x6a -> :sswitch_1f
        -0x69 -> :sswitch_1e
        -0x68 -> :sswitch_1d
        -0x67 -> :sswitch_1c
        -0x66 -> :sswitch_1b
        -0x65 -> :sswitch_1a
        -0x64 -> :sswitch_19
        -0x18 -> :sswitch_18
        -0x17 -> :sswitch_17
        -0x16 -> :sswitch_16
        -0x15 -> :sswitch_15
        -0x14 -> :sswitch_14
        -0x13 -> :sswitch_13
        -0x12 -> :sswitch_12
        -0x11 -> :sswitch_11
        -0x10 -> :sswitch_10
        -0xf -> :sswitch_f
        -0xe -> :sswitch_e
        -0xd -> :sswitch_d
        -0xc -> :sswitch_c
        -0xb -> :sswitch_b
        -0xa -> :sswitch_a
        -0x9 -> :sswitch_9
        -0x8 -> :sswitch_8
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method
