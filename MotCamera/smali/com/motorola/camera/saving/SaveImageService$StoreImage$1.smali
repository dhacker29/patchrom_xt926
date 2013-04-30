.class Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;
.super Ljava/lang/Object;
.source "SaveImageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/saving/SaveImageService$StoreImage;->createThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;


# direct methods
.method constructor <init>(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 304
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving Thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mKeepThreadRunning:Z
    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$900(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    const/4 v11, 0x0

    .line 307
    .local v11, image:Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;
    const/4 v12, 0x0

    .line 309
    .local v12, memoryAvailable:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 310
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    const/4 v3, 0x1

    #calls: Lcom/motorola/camera/saving/SaveImageService;->setQueueEmptyStatus(Z)V
    invoke-static {v1, v3}, Lcom/motorola/camera/saving/SaveImageService;->access$1100(Lcom/motorola/camera/saving/SaveImageService;Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1200(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v12, 0x1

    .line 316
    :cond_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCameraStorage"

    const-string v3, "Saving Thread waiting"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    :goto_0
    :try_start_2
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v3, "image retrieved from queue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    if-eqz v11, :cond_4

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getPath()Ljava/lang/String;
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1300(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getTitle()Ljava/lang/String;
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1400(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getImage()[B
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1500(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)[B

    move-result-object v4

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getDate()J
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1600(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)J

    move-result-wide v5

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getLocation()Landroid/location/Location;
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1700(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)Landroid/location/Location;

    move-result-object v7

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getOrientation()I
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1800(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)I

    move-result v8

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->addImage(Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;I)Landroid/net/Uri;
    invoke-static/range {v1 .. v8}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1900(Lcom/motorola/camera/saving/SaveImageService$StoreImage;Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;I)Landroid/net/Uri;

    move-result-object v15

    .line 334
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_4

    .line 335
    new-instance v9, Lcom/motorola/camera/CameraRoll$CameraData;

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getPath()Ljava/lang/String;
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1300(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v15, v1, v2}, Lcom/motorola/camera/CameraRoll$CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 338
    .local v9, data:Lcom/motorola/camera/CameraRoll$CameraData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    #getter for: Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->access$2000(Lcom/motorola/camera/saving/SaveImageService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 339
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    #getter for: Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->access$2000(Lcom/motorola/camera/saving/SaveImageService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    .end local v9           #data:Lcom/motorola/camera/CameraRoll$CameraData;
    .end local v13           #msg:Landroid/os/Message;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 344
    if-eqz v11, :cond_5

    .line 345
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$2100(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I

    move-result v3

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->getImage()[B
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;->access$1500(Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;)[B

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v3, v4

    #setter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v1, v3}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$2102(Lcom/motorola/camera/saving/SaveImageService$StoreImage;I)I

    .line 346
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 347
    const-string v1, "MotoCameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor thread - mCurrentMemoryUsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$2100(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  queue size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1200(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    const v1, 0xe4e1c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I
    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$2100(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mAvailableMemoryPicSize:I
    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$2200(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mAvailableMemoryNumPics:I
    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$2300(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I

    move-result v4

    mul-int/2addr v3, v4

    if-le v1, v3, :cond_6

    .line 354
    const/4 v12, 0x1

    .line 357
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    if-eqz v12, :cond_7

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    #calls: Lcom/motorola/camera/saving/SaveImageService;->onMemoryAvailable()V
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->access$2400(Lcom/motorola/camera/saving/SaveImageService;)V

    .line 363
    :cond_7
    const/4 v14, 0x0

    .line 364
    .local v14, queueEmpty:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 365
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    .line 366
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 368
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queueEmpty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mKeepThreadRunning:Z
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$900(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v14, :cond_0

    .line 373
    .end local v14           #queueEmpty:Z
    :goto_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoCameraStorage"

    const-string v2, "loop exited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    const/4 v2, 0x1

    #calls: Lcom/motorola/camera/saving/SaveImageService;->setQueueEmptyStatus(Z)V
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->access$1100(Lcom/motorola/camera/saving/SaveImageService;Z)V

    .line 376
    return-void

    .line 318
    :catch_0
    move-exception v10

    .line 319
    .local v10, e:Ljava/lang/InterruptedException;
    :try_start_5
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "MotoCameraStorage"

    const-string v3, "Saving Thread interrupted"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_a
    monitor-exit v2

    goto :goto_1

    .line 329
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 323
    :cond_b
    :try_start_6
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 324
    const-string v1, "MotoCameraKPI"

    const-string v3, "about to retrieve image from queue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;->this$1:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #getter for: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    move-object v11, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 357
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 366
    .restart local v14       #queueEmpty:Z
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method
