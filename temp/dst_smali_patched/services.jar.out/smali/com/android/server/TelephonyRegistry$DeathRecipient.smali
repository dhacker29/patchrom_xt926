.class Lcom/android/server/TelephonyRegistry$DeathRecipient;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method private constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "token"

    .prologue
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$DeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$DeathRecipient;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;Lcom/android/server/TelephonyRegistry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry$DeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$DeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    #getter for: Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$000(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$DeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    #getter for: Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$000(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/TelephonyRegistry$Record;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$DeathRecipient;->mToken:Landroid/os/IBinder;

    if-ne v2, v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$DeathRecipient;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    monitor-exit v3

    return-void

    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/TelephonyRegistry$Record;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
