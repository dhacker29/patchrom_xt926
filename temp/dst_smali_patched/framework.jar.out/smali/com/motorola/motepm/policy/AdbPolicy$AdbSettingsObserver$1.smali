.class Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;
.super Landroid/os/AsyncTask;
.source "AdbPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;->this$1:Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;->this$1:Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;

    iget-object v0, v0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;->this$0:Lcom/motorola/motepm/policy/AdbPolicy;

    #calls: Lcom/motorola/motepm/policy/AdbPolicy;->getMutex()Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/motepm/policy/AdbPolicy;->access$000(Lcom/motorola/motepm/policy/AdbPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;->this$1:Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;

    iget-object v0, v0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;->this$0:Lcom/motorola/motepm/policy/AdbPolicy;

    iget-object v2, p0, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver$1;->this$1:Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;

    iget-object v2, v2, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;->this$0:Lcom/motorola/motepm/policy/AdbPolicy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/motepm/policy/AdbPolicy;->getDeviceState(Landroid/content/Intent;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/motepm/policy/AdbPolicy;->onDeviceStateChanged(I)V

    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
