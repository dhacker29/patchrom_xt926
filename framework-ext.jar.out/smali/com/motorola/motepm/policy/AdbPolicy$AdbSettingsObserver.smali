.class Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdbPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/policy/AdbPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/policy/AdbPolicy;


# direct methods
.method public constructor <init>(Lcom/motorola/motepm/policy/AdbPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;->this$0:Lcom/motorola/motepm/policy/AdbPolicy;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 23
    new-instance v0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;-><init>(Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    return-void
.end method
