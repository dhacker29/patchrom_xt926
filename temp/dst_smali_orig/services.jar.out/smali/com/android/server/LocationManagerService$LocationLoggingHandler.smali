.class Lcom/android/server/LocationManagerService$LocationLoggingHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationLoggingHandler"
.end annotation


# instance fields
.field public mFastUpdate:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationLoggingHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v8, 0x3

    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v7}, Lcom/android/server/LocationManagerService;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, activeListeners:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .local v5, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mUidName:Ljava/lang/String;

    const-string v9, "android.uid.system"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    const-string v9, "passive"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v7, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Running, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mUidName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", MinTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", MinDistance: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", SingleShot: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mSingleShot:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Receiver: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$2600()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    if-eqz v7, :cond_1

    const-string v7, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Lat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Bearing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Accuracy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .end local v3           #j:I
    .end local v5           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v6           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_3
    if-eqz v0, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->mFastUpdate:Z

    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLoggingHandler:Lcom/android/server/LocationManagerService$LocationLoggingHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationLoggingHandler;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLoggingHandler:Lcom/android/server/LocationManagerService$LocationLoggingHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationLoggingHandler;

    move-result-object v7

    const/4 v9, 0x3

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1600()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    monitor-exit v8

    .end local v0           #activeListeners:Z
    .end local v2           #i:I
    .end local v4           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    return-void

    .restart local v0       #activeListeners:Z
    .restart local v2       #i:I
    .restart local v4       #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->mFastUpdate:Z

    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLoggingHandler:Lcom/android/server/LocationManagerService$LocationLoggingHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationLoggingHandler;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLoggingHandler:Lcom/android/server/LocationManagerService$LocationLoggingHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationLoggingHandler;

    move-result-object v7

    const/4 v9, 0x3

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1600()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/LocationManagerService$LocationLoggingHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .end local v0           #activeListeners:Z
    .end local v2           #i:I
    .end local v4           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v7, "LocationManagerService"

    const-string v8, "Exception in LocationLoggingHandler.handleMessage:"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
