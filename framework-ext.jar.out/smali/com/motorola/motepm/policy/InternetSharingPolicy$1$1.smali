.class Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;
.super Landroid/os/AsyncTask;
.source "InternetSharingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/motepm/policy/InternetSharingPolicy$1;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
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
.field final synthetic this$1:Lcom/motorola/motepm/policy/InternetSharingPolicy$1;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/policy/InternetSharingPolicy$1;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;->this$1:Lcom/motorola/motepm/policy/InternetSharingPolicy$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;->this$1:Lcom/motorola/motepm/policy/InternetSharingPolicy$1;

    iget-object v0, v0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;->this$0:Lcom/motorola/motepm/policy/InternetSharingPolicy;

    #calls: Lcom/motorola/motepm/policy/InternetSharingPolicy;->getMutex()Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->access$100(Lcom/motorola/motepm/policy/InternetSharingPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;->this$1:Lcom/motorola/motepm/policy/InternetSharingPolicy$1;

    iget-object v0, v0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;->this$0:Lcom/motorola/motepm/policy/InternetSharingPolicy;

    invoke-virtual {v0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;->this$1:Lcom/motorola/motepm/policy/InternetSharingPolicy$1;

    iget-object v0, v0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;->this$0:Lcom/motorola/motepm/policy/InternetSharingPolicy;

    invoke-virtual {v0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->onDisable()Z

    .line 42
    :cond_0
    monitor-exit v1

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
