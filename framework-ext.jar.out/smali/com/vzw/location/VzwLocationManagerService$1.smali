.class Lcom/vzw/location/VzwLocationManagerService$1;
.super Lcom/vzw/location/IVzwGpsStatusProvider$Stub;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1127
    if-nez p1, :cond_0

    .line 1128
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener==null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1131
    :cond_0
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1132
    :try_start_0
    invoke-interface {p1}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1133
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1134
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1135
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwLocationManagerService$Listener;

    .line 1136
    .local v4, test:Lcom/vzw/location/VzwLocationManagerService$Listener;
    iget-object v5, v4, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v5}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1138
    monitor-exit v6

    .line 1146
    .end local v4           #test:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :goto_1
    return-void

    .line 1134
    .restart local v4       #test:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1142
    .end local v4           #test:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_2
    new-instance v2, Lcom/vzw/location/VzwLocationManagerService$Listener;

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct {v2, v5, p1}, Lcom/vzw/location/VzwLocationManagerService$Listener;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 1143
    .local v2, l:Lcom/vzw/location/VzwLocationManagerService$Listener;
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1144
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    monitor-exit v6

    goto :goto_1

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/vzw/location/VzwLocationManagerService$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 1149
    if-nez p1, :cond_0

    .line 1150
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener==null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1153
    :cond_0
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1154
    :try_start_0
    invoke-interface {p1}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1155
    .local v0, binder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 1156
    .local v2, l:Lcom/vzw/location/VzwLocationManagerService$Listener;
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1157
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 1158
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwLocationManagerService$Listener;

    .line 1159
    .local v4, test:Lcom/vzw/location/VzwLocationManagerService$Listener;
    iget-object v5, v4, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v5}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1160
    move-object v2, v4

    .line 1157
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1164
    .end local v4           #test:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_2
    if-eqz v2, :cond_3

    .line 1165
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1166
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1168
    :cond_3
    monitor-exit v6

    .line 1169
    return-void

    .line 1168
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/vzw/location/VzwLocationManagerService$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
