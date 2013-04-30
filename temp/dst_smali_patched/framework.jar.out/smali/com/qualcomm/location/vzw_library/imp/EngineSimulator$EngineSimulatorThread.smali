.class Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;
.super Ljava/lang/Thread;
.source "EngineSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineSimulatorThread"
.end annotation


# static fields
.field private static final TIME_SEC_WAIT_FOR_MSA:I = 0x5


# instance fields
.field private mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

.field private mCallbackThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;

.field private mLat:D

.field private mLon:D

.field private mMode:I

.field private mSessionId:I

.field private mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field final synthetic this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)V
    .locals 3
    .parameter

    .prologue
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->UNKNOWN:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$1;)V

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mCallbackThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;

    const-wide v0, 0x3ff3c083126e978dL

    iput-wide v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLat:D

    const-wide v0, 0x4012456d5cfaacdaL

    iput-wide v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLon:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mCallbackThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized state_idle()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private state_recv()V
    .locals 8

    .prologue
    const-wide v6, 0x3f50624dd2f1a9fcL

    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v5, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$3;

    invoke-direct {v5, p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$3;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v3, 0xc8

    :try_start_3
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v3

    :goto_1
    return-void

    .restart local v0       #i:I
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    :cond_0
    new-instance v1, Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-direct {v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;-><init>()V

    .local v1, location:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    iget-wide v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLat:D

    invoke-virtual {v1, v3, v4}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setLatitude(D)V

    iget-wide v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLon:D

    invoke-virtual {v1, v3, v4}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setLongitude(D)V

    iget v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mSessionId:I

    invoke-virtual {v1, v3}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSessionId(I)V

    iget v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mMode:I

    invoke-virtual {v1, v3}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setFixMode(I)V

    iget-wide v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLat:D

    add-double/2addr v3, v6

    iput-wide v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLat:D

    iget-wide v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLon:D

    add-double/2addr v3, v6

    iput-wide v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mLon:D

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    sget-object v3, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    new-instance v2, Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-direct {v2, v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;-><init>(Landroid/location/Location;)V

    .local v2, location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v5, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$4;

    invoke-direct {v5, p0, v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$4;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    :try_start_e
    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v5, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$5;

    invoke-direct {v5, p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$5;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v3
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0

    .end local v2           #location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    :catchall_3
    move-exception v3

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v3
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    :catchall_4
    move-exception v3

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v3
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0

    :catchall_5
    move-exception v3

    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v3
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0
.end method

.method private declared-synchronized state_recv_req()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->RECV:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private state_recv_stop_req()V
    .locals 5

    .prologue
    new-instance v0, Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-direct {v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;-><init>()V

    .local v0, location:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-direct {v1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;-><init>(Landroid/location/Location;)V

    .local v1, location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    new-instance v4, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$1;

    invoke-direct {v4, p0, v1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$1;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->FINAL_SENT:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0xc8

    :try_start_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    :try_start_3
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    new-instance v4, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$2;

    invoke-direct {v4, p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$2;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    return-void

    .end local v1           #location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .restart local v1       #location_copy:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->TERM_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetGps(I)V
    .locals 0
    .parameter "bits"

    .prologue
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .local v0, fgContinue:Z
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mCallbackThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;

    invoke-virtual {v1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->start()V

    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$1;->$SwitchMap$com$qualcomm$location$vzw_library$imp$EngineSimulator$EngineState:[I

    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v1

    new-instance v3, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$6;

    invoke-direct {v3, p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread$6;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->state_idle()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->state_recv_req()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->state_recv()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->state_recv_stop_req()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_agps_server(ILjava/lang/String;I)V
    .locals 0
    .parameter "type"
    .parameter "hostname"
    .parameter "port"

    .prologue
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized simStart(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z
    .locals 2
    .parameter "criteria"
    .parameter "sessionId"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "VzwHalEngineSim"

    const-string v1, "start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mSessionId:I

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mMode:I

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE_START_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized simStop()Z
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "VzwHalEngineSim"

    const-string v1, "stop request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->RECV:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->RECV_STOP_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "VzwHalEngineSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop request not taken, for engine is not in RECV state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->mState:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
