.class Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager$SensorThread;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->access$002(I)I

    .line 106
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 111
    const/4 v12, 0x3

    new-array v11, v12, [F

    .line 112
    .local v11, values:[F
    const/4 v12, 0x1

    new-array v9, v12, [I

    .line 113
    .local v9, status:[I
    const/4 v12, 0x1

    new-array v10, v12, [J

    .line 114
    .local v10, timestamp:[J
    const/4 v12, -0x8

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    .line 116
    invoke-direct/range {p0 .. p0}, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v12

    if-nez v12, :cond_0

    .line 183
    :goto_0
    return-void

    .line 120
    :cond_0
    monitor-enter p0

    .line 122
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SystemSensorManager$SensorThread;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/hardware/SystemSensorManager$SensorThread;->mSensorsReady:Z

    .line 123
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :goto_1
    const-wide/16 v2, 0x0

    .line 129
    .local v2, currTime:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$100()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 132
    :cond_1
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()I

    move-result v12

    invoke-static {v12, v11, v9, v10}, Landroid/hardware/SystemSensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v6

    .line 134
    .local v6, sensor:I
    const/4 v12, 0x0

    aget v1, v9, v12

    .line 135
    .local v1, accuracy:I
    sget-object v13, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v13

    .line 136
    const/4 v12, -0x1

    if-eq v6, v12, :cond_2

    :try_start_1
    sget-object v12, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 139
    :cond_2
    const/4 v12, -0x1

    if-ne v6, v12, :cond_3

    sget-object v12, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 141
    const-string v12, "SensorManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()I

    move-result v12

    invoke-static {v12}, Landroid/hardware/SystemSensorManager;->sensors_destroy_queue(I)V

    .line 145
    const/4 v12, 0x0

    invoke-static {v12}, Landroid/hardware/SystemSensorManager;->access$002(I)I

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/SystemSensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SystemSensorManager$SensorThread;

    const/4 v14, 0x0

    iput-object v14, v12, Landroid/hardware/SystemSensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 147
    monitor-exit v13

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 124
    .end local v1           #accuracy:I
    .end local v2           #currTime:J
    .end local v6           #sensor:I
    :catchall_1
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 149
    .restart local v1       #accuracy:I
    .restart local v2       #currTime:J
    .restart local v6       #sensor:I
    :cond_4
    :try_start_3
    sget-object v12, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 150
    .local v7, sensorObject:Landroid/hardware/Sensor;
    if-eqz v7, :cond_8

    .line 152
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$100()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_5

    .line 154
    const-string v12, "KPI-ORT-0&1"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SensorManager$SensorThread.run sensors_data_poll used "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v2

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_5
    sget-object v12, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 162
    .local v8, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v8, :cond_7

    .line 163
    sget-object v12, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 164
    .local v5, listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v5, v7}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 167
    invoke-virtual {v5, v7, v11, v10, v1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    .line 162
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 173
    .end local v5           #listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_7
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$100()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_8

    .line 175
    const-string v12, "KPI-ORT-2"

    const-string v14, "SensorManager$SensorThread.run listener.onSensorChangedLocked complete"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v4           #i:I
    .end local v8           #size:I
    :cond_8
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
