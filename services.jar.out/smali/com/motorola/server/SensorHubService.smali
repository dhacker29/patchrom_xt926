.class public Lcom/motorola/server/SensorHubService;
.super Lcom/motorola/sensorhub/ISensorHub$Stub;
.source "SensorHubService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/SensorHubService$RadiusListener;,
        Lcom/motorola/server/SensorHubService$MovementListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_ALLOWED_END_DURATION:I = 0xff

.field private static final SENSORHUB_EVENT_END_MOVEMENT:I = 0x1

.field private static final SENSORHUB_EVENT_END_MOVEMENT_QCOM:I = 0x4

.field private static final SENSORHUB_EVENT_EXIT_RADIUS:I = 0x2

.field private static final SENSORHUB_EVENT_START_MOVEMENT:I = 0x0

.field private static final SENSORHUB_EVENT_START_MOVEMENT_QCOM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SensorHubService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMaxClients:I

.field private mMovementClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/motorola/server/SensorHubService$MovementListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

.field private mSlotId:[Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/sensorhub/ISensorHub$Stub;-><init>()V

    .line 32
    const/4 v1, 0x4

    iput v1, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/motorola/server/SensorHubService;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    .line 46
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msm8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/16 v1, 0x8

    iput v1, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    .line 49
    :cond_0
    iget v1, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    new-array v1, v1, [Landroid/os/IBinder;

    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    if-ge v0, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/SensorHubService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/motorola/server/SensorHubService;->disableMovementInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method private disableMovementInternalLocked(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "binder"
    .parameter "iD"

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-static {v1, v1, p2}, Lcom/motorola/server/SensorHubService;->enableMovement_native(III)Z

    .line 224
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/SensorHubService$MovementListener;

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 225
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 227
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {p2}, Lcom/motorola/server/SensorHubService;->disableMovement_native(I)V

    .line 230
    :cond_0
    return-void
.end method

.method private static native disableMovement_native(I)V
.end method

.method private static native disableRadius_native()V
.end method

.method private enableMovementInternalLocked(Landroid/os/IBinder;III)Z
    .locals 8
    .parameter "binder"
    .parameter "startDuration"
    .parameter "endDuration"
    .parameter "iD"

    .prologue
    const/4 v7, 0x0

    .line 191
    invoke-static {p2, p3, p4}, Lcom/motorola/server/SensorHubService;->enableMovement_native(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const-string v1, "SensorHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMovement_native returned false - iD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 203
    :goto_0
    return v1

    .line 195
    :cond_0
    new-instance v0, Lcom/motorola/server/SensorHubService$MovementListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/server/SensorHubService$MovementListener;-><init>(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;III)V

    .line 197
    .local v0, listener:Lcom/motorola/server/SensorHubService$MovementListener;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 198
    iget-object v1, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aput-object p1, v1, p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v1, 0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    move v1, v7

    .line 201
    goto :goto_0
.end method

.method private static native enableMovement_native(III)Z
.end method

.method private static native enableRadius_native(F)Z
.end method

.method private static native init_native()I
.end method

.method private static native poll_native([F)I
.end method


# virtual methods
.method public disableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;)V
    .locals 4
    .parameter "remote"

    .prologue
    .line 207
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 209
    .local v0, binder:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 210
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    if-ge v1, v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/motorola/server/SensorHubService;->disableMovementInternalLocked(Landroid/os/IBinder;I)V

    .line 219
    monitor-exit v3

    .line 220
    return-void

    .line 210
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public disableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;)V
    .locals 3
    .parameter "remote"

    .prologue
    .line 304
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubRadiusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 307
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/server/SensorHubService;->disableRadiusInternalLocked(Landroid/os/IBinder;)V

    .line 309
    monitor-exit v2

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableRadiusInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .parameter "binder"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 315
    invoke-static {}, Lcom/motorola/server/SensorHubService;->disableRadius_native()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    .line 318
    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 144
    iget-object v4, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 146
    .local v2, listenerCount:I
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v3, :cond_0

    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " active listeners"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v2, :cond_1

    const-string v3, ":"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 150
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/motorola/server/SensorHubService$MovementListener;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/SensorHubService$MovementListener;

    iget-object v3, v3, Lcom/motorola/server/SensorHubService$MovementListener;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": MovementListener"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (startDuration = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/SensorHubService$MovementListener;

    iget v3, v3, Lcom/motorola/server/SensorHubService$MovementListener;->mStartDuration:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " s, endDuration = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/SensorHubService$MovementListener;

    iget v3, v3, Lcom/motorola/server/SensorHubService$MovementListener;->mEndDuration:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " s)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/motorola/server/SensorHubService$MovementListener;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listenerCount:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 148
    .restart local v2       #listenerCount:I
    :cond_1
    :try_start_1
    const-string v3, "."

    goto :goto_0

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v3, :cond_3

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    iget-object v5, v5, Lcom/motorola/server/SensorHubService$RadiusListener;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": RadiusListener"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (radius = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " m)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    return-void
.end method

.method public enableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;II)Z
    .locals 5
    .parameter "remote"
    .parameter "startDuration"
    .parameter "endDuration"

    .prologue
    .line 166
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 168
    .local v0, binder:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 169
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    if-ge v1, v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 175
    :cond_0
    iget v2, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    if-ge v1, v2, :cond_1

    const/16 v2, 0xff

    if-le p3, v2, :cond_3

    .line 176
    :cond_1
    const-string v2, "SensorHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client not allocated - iD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "endDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v2, 0x0

    .line 185
    :goto_1
    return v2

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_3
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 185
    :try_start_0
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/motorola/server/SensorHubService;->enableMovementInternalLocked(Landroid/os/IBinder;III)Z

    move-result v2

    monitor-exit v3

    goto :goto_1

    .line 186
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;F)Z
    .locals 3
    .parameter "remote"
    .parameter "radius"

    .prologue
    .line 278
    invoke-interface {p1}, Lcom/motorola/sensorhub/ISensorHubRadiusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 281
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/motorola/server/SensorHubService;->enableRadiusInternalLocked(Landroid/os/IBinder;F)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableRadiusInternalLocked(Landroid/os/IBinder;F)Z
    .locals 4
    .parameter "binder"
    .parameter "radius"

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v3, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v3, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v2

    .line 290
    :cond_1
    invoke-static {p2}, Lcom/motorola/server/SensorHubService;->enableRadius_native(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    new-instance v1, Lcom/motorola/server/SensorHubService$RadiusListener;

    invoke-direct {v1, p0, p1}, Lcom/motorola/server/SensorHubService$RadiusListener;-><init>(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;)V

    .line 295
    .local v1, listener:Lcom/motorola/server/SensorHubService$RadiusListener;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 296
    iput-object v1, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v2, 0x1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000

    const/4 v9, 0x2

    .line 73
    const/4 v6, 0x3

    new-array v5, v6, [F

    .line 74
    .local v5, values:[F
    const-string v6, "SensorHubService"

    const-string v7, "Polling for meaningful movement events."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/motorola/server/SensorHubService;->poll_native([F)I

    move-result v0

    .line 82
    .local v0, event:I
    packed-switch v0, :pswitch_data_0

    .line 137
    const-string v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received event of mysterious type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 85
    aget v6, v5, v9

    float-to-int v2, v6

    .line 86
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    if-ge v1, v6, :cond_0

    .line 87
    int-to-double v6, v1

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 88
    .local v3, myId:I
    and-int v6, v3, v2

    if-ne v6, v3, :cond_1

    .line 89
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/SensorHubService$MovementListener;

    .line 90
    .local v4, myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    if-eqz v4, :cond_2

    .line 91
    invoke-virtual {v4}, Lcom/motorola/server/SensorHubService$MovementListener;->onStartMovement()V

    .line 86
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_2
    const-string v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SENSORHUB_EVENT_START_MOVEMENT - myListener null for id - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 100
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #myId:I
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :pswitch_1
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 101
    aget v6, v5, v9

    float-to-int v2, v6

    .line 102
    .restart local v2       #id:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget v6, p0, Lcom/motorola/server/SensorHubService;->mMaxClients:I

    if-ge v1, v6, :cond_0

    .line 103
    int-to-double v6, v1

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 104
    .restart local v3       #myId:I
    and-int v6, v3, v2

    if-ne v6, v3, :cond_3

    .line 105
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/SensorHubService$MovementListener;

    .line 106
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v4}, Lcom/motorola/server/SensorHubService$MovementListener;->onEndMovement()V

    .line 102
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 109
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :cond_4
    const-string v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SENSORHUB_EVENT_END_MOVEMENT - myListener null for id - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 116
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #myId:I
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :pswitch_2
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 117
    aget v6, v5, v9

    float-to-int v2, v6

    .line 118
    .restart local v2       #id:I
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/SensorHubService$MovementListener;

    .line 119
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v4}, Lcom/motorola/server/SensorHubService$MovementListener;->onStartMovement()V

    goto/16 :goto_0

    .line 124
    .end local v2           #id:I
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :pswitch_3
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 125
    aget v6, v5, v9

    float-to-int v2, v6

    .line 126
    .restart local v2       #id:I
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mMovementClients:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/motorola/server/SensorHubService;->mSlotId:[Landroid/os/IBinder;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/SensorHubService$MovementListener;

    .line 127
    .restart local v4       #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v4}, Lcom/motorola/server/SensorHubService$MovementListener;->onEndMovement()V

    goto/16 :goto_0

    .line 132
    .end local v2           #id:I
    .end local v4           #myListener:Lcom/motorola/server/SensorHubService$MovementListener;
    :pswitch_4
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    if-eqz v6, :cond_0

    .line 133
    iget-object v6, p0, Lcom/motorola/server/SensorHubService;->mRadiusListener:Lcom/motorola/server/SensorHubService$RadiusListener;

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lcom/motorola/server/SensorHubService$RadiusListener;->onExitRadius(FF)V

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 57
    :try_start_0
    const-string v3, "sensorhub_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-static {}, Lcom/motorola/server/SensorHubService;->init_native()I

    move-result v1

    .line 63
    .local v1, error:I
    if-nez v1, :cond_0

    .line 64
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "SensorHubService"

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 69
    .end local v1           #error:I
    .end local v2           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "SensorHubService"

    const-string v4, "JNI library does not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    .restart local v1       #error:I
    :cond_0
    const-string v3, "SensorHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in init_native: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
