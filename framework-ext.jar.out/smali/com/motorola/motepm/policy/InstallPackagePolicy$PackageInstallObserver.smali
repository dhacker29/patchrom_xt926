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
    .line 31
    iput-object p1, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->this$0:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->mWho:Landroid/content/ComponentName;

    .line 33
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 39
    iget-object v3, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->this$0:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    #calls: Lcom/motorola/motepm/policy/InstallPackagePolicy;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->access$000(Lcom/motorola/motepm/policy/InstallPackagePolicy;)Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 46
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 154
    const/16 v2, -0x6e

    .line 158
    .local v2, resultCode:I
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.app.action.ACTION_APP_INSTALLATION_RESULT_RETURN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "package_name"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v3, "result_code"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v3, p0, Lcom/motorola/motepm/policy/InstallPackagePolicy$PackageInstallObserver;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #resultCode:I
    :sswitch_0
    const/4 v2, 0x1

    .line 49
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 51
    .end local v2           #resultCode:I
    :sswitch_1
    const/4 v2, -0x1

    .line 52
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 54
    .end local v2           #resultCode:I
    :sswitch_2
    const/4 v2, -0x2

    .line 55
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 57
    .end local v2           #resultCode:I
    :sswitch_3
    const/4 v2, -0x3

    .line 58
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 60
    .end local v2           #resultCode:I
    :sswitch_4
    const/4 v2, -0x4

    .line 61
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 63
    .end local v2           #resultCode:I
    :sswitch_5
    const/4 v2, -0x5

    .line 64
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 66
    .end local v2           #resultCode:I
    :sswitch_6
    const/4 v2, -0x6

    .line 67
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 69
    .end local v2           #resultCode:I
    :sswitch_7
    const/4 v2, -0x7

    .line 70
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 72
    .end local v2           #resultCode:I
    :sswitch_8
    const/4 v2, -0x8

    .line 73
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 75
    .end local v2           #resultCode:I
    :sswitch_9
    const/16 v2, -0x9

    .line 76
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 78
    .end local v2           #resultCode:I
    :sswitch_a
    const/16 v2, -0xa

    .line 79
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 81
    .end local v2           #resultCode:I
    :sswitch_b
    const/16 v2, -0xb

    .line 82
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 84
    .end local v2           #resultCode:I
    :sswitch_c
    const/16 v2, -0xc

    .line 85
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 87
    .end local v2           #resultCode:I
    :sswitch_d
    const/16 v2, -0xd

    .line 88
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 90
    .end local v2           #resultCode:I
    :sswitch_e
    const/16 v2, -0xe

    .line 91
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 93
    .end local v2           #resultCode:I
    :sswitch_f
    const/16 v2, -0xf

    .line 94
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 96
    .end local v2           #resultCode:I
    :sswitch_10
    const/16 v2, -0x10

    .line 97
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 99
    .end local v2           #resultCode:I
    :sswitch_11
    const/16 v2, -0x11

    .line 100
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 102
    .end local v2           #resultCode:I
    :sswitch_12
    const/16 v2, -0x12

    .line 103
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 105
    .end local v2           #resultCode:I
    :sswitch_13
    const/16 v2, -0x13

    .line 106
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 108
    .end local v2           #resultCode:I
    :sswitch_14
    const/16 v2, -0x14

    .line 109
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 111
    .end local v2           #resultCode:I
    :sswitch_15
    const/16 v2, -0x15

    .line 112
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 114
    .end local v2           #resultCode:I
    :sswitch_16
    const/16 v2, -0x16

    .line 115
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 117
    .end local v2           #resultCode:I
    :sswitch_17
    const/16 v2, -0x17

    .line 118
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 120
    .end local v2           #resultCode:I
    :sswitch_18
    const/16 v2, -0x18

    .line 121
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 123
    .end local v2           #resultCode:I
    :sswitch_19
    const/16 v2, -0x64

    .line 124
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 126
    .end local v2           #resultCode:I
    :sswitch_1a
    const/16 v2, -0x65

    .line 127
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 129
    .end local v2           #resultCode:I
    :sswitch_1b
    const/16 v2, -0x66

    .line 130
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 132
    .end local v2           #resultCode:I
    :sswitch_1c
    const/16 v2, -0x67

    .line 133
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 135
    .end local v2           #resultCode:I
    :sswitch_1d
    const/16 v2, -0x68

    .line 136
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 138
    .end local v2           #resultCode:I
    :sswitch_1e
    const/16 v2, -0x69

    .line 139
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 141
    .end local v2           #resultCode:I
    :sswitch_1f
    const/16 v2, -0x6a

    .line 142
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 144
    .end local v2           #resultCode:I
    :sswitch_20
    const/16 v2, -0x6b

    .line 145
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 147
    .end local v2           #resultCode:I
    :sswitch_21
    const/16 v2, -0x6c

    .line 148
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 150
    .end local v2           #resultCode:I
    :sswitch_22
    const/16 v2, -0x6d

    .line 151
    .restart local v2       #resultCode:I
    goto :goto_1

    .line 46
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
