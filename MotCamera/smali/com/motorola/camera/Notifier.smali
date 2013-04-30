.class public Lcom/motorola/camera/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/Notifier$Listener;,
        Lcom/motorola/camera/Notifier$TYPE;
    }
.end annotation


# static fields
.field private static mNotifier:Lcom/motorola/camera/Notifier;


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/camera/Notifier$TYPE;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/Notifier$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/Notifier;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/motorola/camera/Notifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/Notifier;->mNotifier:Lcom/motorola/camera/Notifier;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/motorola/camera/Notifier;

    invoke-direct {v0}, Lcom/motorola/camera/Notifier;-><init>()V

    sput-object v0, Lcom/motorola/camera/Notifier;->mNotifier:Lcom/motorola/camera/Notifier;

    .line 68
    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier;->mNotifier:Lcom/motorola/camera/Notifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    .locals 2
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cleanUp()V
    .locals 0

    .prologue
    .line 119
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 3
    .parameter "type"
    .parameter "bundle"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/Notifier$Listener;

    .line 98
    .local v1, listener:Lcom/motorola/camera/Notifier$Listener;
    invoke-interface {v1, p1, p2}, Lcom/motorola/camera/Notifier$Listener;->onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/motorola/camera/Notifier$Listener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    .locals 1
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/motorola/camera/Notifier;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method
