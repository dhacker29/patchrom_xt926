.class Lcom/motorola/camera/saving/SaveImageService$StoreImage;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCameraStorage"


# instance fields
.field private mAvailableMemoryNumPics:I

.field private mAvailableMemoryPicSize:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMemoryUsed:I

.field private mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mKeepThreadRunning:Z

.field private mPicExtension:Ljava/lang/String;

.field private mSavingThread:Ljava/lang/Thread;

.field private mSendAvailableMemoryUpdate:Z

.field final synthetic this$0:Lcom/motorola/camera/saving/SaveImageService;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/saving/SaveImageService;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    .line 279
    const-string v0, ".jpg"

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mPicExtension:Ljava/lang/String;

    .line 280
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    .line 281
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mKeepThreadRunning:Z

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;-><init>(Lcom/motorola/camera/saving/SaveImageService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/motorola/camera/saving/SaveImageService$StoreImage;Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 274
    invoke-direct/range {p0 .. p7}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->addImage(Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->createThread()V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    return v0
.end method

.method static synthetic access$2102(Lcom/motorola/camera/saving/SaveImageService$StoreImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    return p1
.end method

.method static synthetic access$2200(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mAvailableMemoryPicSize:I

    return v0
.end method

.method static synthetic access$2300(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mAvailableMemoryNumPics:I

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->cleanup()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/camera/saving/SaveImageService$StoreImage;[BJLjava/lang/String;Landroid/location/Location;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 274
    invoke-direct/range {p0 .. p6}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->saveImage([BJLjava/lang/String;Landroid/location/Location;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/camera/saving/SaveImageService$StoreImage;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->canSave(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/camera/saving/SaveImageService$StoreImage;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->updateOnMemoryAvailable(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mKeepThreadRunning:Z

    return v0
.end method

.method private addImage(Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;I)Landroid/net/Uri;
    .locals 14
    .parameter "imagePath"
    .parameter "title"
    .parameter "jpeg"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 471
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_FILE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v11, v12}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 473
    :cond_0
    const/4 v1, 0x0

    .line 475
    .local v1, capturedUri:Landroid/net/Uri;
    move-object v7, p1

    .line 476
    .local v7, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 480
    const/4 v5, 0x0

    .line 482
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 489
    if-eqz v6, :cond_1

    .line 490
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 496
    :cond_1
    :goto_0
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_FILE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v11, v12}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 497
    :cond_2
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_DB:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v11, v12}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 500
    :cond_3
    new-instance v10, Landroid/content/ContentValues;

    const/4 v11, 0x5

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 501
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "mime_type"

    const-string v12, "image/jpeg"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v11, "_data"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v11, "title"

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v11, "_size"

    move-object/from16 v0, p3

    array-length v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v11, "datetaken"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    const-string v11, "orientation"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    if-eqz p6, :cond_4

    .line 509
    const-string v11, "latitude"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 510
    const-string v11, "longitude"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 513
    :cond_4
    const/4 v9, 0x0

    .line 515
    .local v9, uri:Landroid/net/Uri;
    :try_start_3
    iget-object v11, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 516
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_DB:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v11, v12}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 518
    :cond_5
    move-object v1, v9

    .line 529
    :cond_6
    :goto_1
    :try_start_4
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 531
    .local v4, fileUri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v12, v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 536
    .end local v4           #fileUri:Landroid/net/Uri;
    :cond_7
    :goto_2
    iget-object v11, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v12, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 538
    iget-object v11, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.camera.NEW_PICTURE"

    invoke-direct {v12, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v11, v1

    .line 540
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_3
    return-object v11

    .line 492
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 493
    .local v3, e:Ljava/lang/Exception;
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "MotoCameraStorage"

    const-string v12, "Failed to close output stream"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 484
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 485
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string v11, "MotoCameraStorage"

    const-string v12, "Failed to write image"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 486
    :cond_9
    const/4 v11, 0x0

    .line 489
    if-eqz v5, :cond_8

    .line 490
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 492
    :catch_2
    move-exception v3

    .line 493
    sget-boolean v12, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string v12, "MotoCameraStorage"

    const-string v13, "Failed to close output stream"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 488
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 489
    :goto_5
    if-eqz v5, :cond_a

    .line 490
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 494
    :cond_a
    :goto_6
    throw v11

    .line 492
    :catch_3
    move-exception v3

    .line 493
    .restart local v3       #e:Ljava/lang/Exception;
    sget-boolean v12, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "MotoCameraStorage"

    const-string v13, "Failed to close output stream"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 519
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_4
    move-exception v8

    .line 525
    .local v8, th:Ljava/lang/Throwable;
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "MotoCameraStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to write MediaStore"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 532
    .end local v8           #th:Ljava/lang/Throwable;
    :catch_5
    move-exception v3

    .line 533
    .restart local v3       #e:Ljava/lang/Exception;
    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "MotoCameraStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to send media scanner intent"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 488
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 484
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private canSave(II)Z
    .locals 5
    .parameter "size"
    .parameter "numPics"

    .prologue
    .line 431
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v2, "can Save entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    const/4 v0, 0x0

    .line 435
    .local v0, result:Z
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 436
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canSave - mCurrentMemoryUsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    const v1, 0xe4e1c0

    iget v3, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    sub-int/2addr v1, v3

    mul-int v3, p1, p2

    if-le v1, v3, :cond_2

    .line 438
    const/4 v0, 0x1

    .line 440
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v2, "can Save exited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_3
    return v0

    .line 440
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 385
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraStorage"

    const-string v1, "cleanup entered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mKeepThreadRunning:Z

    .line 387
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 389
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraStorage"

    const-string v1, "cleanup exited"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    return-void

    .line 389
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createPicturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mPicExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createThread()V
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mKeepThreadRunning:Z

    .line 297
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 298
    const-string v0, "MotoCameraStorage"

    const-string v1, "Attempt to create a thread when it already exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    return-void

    .line 301
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraStorage"

    const-string v1, "Creating Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$1;-><init>(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSavingThread:Ljava/lang/Thread;

    .line 378
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private saveImage([BJLjava/lang/String;Landroid/location/Location;I)V
    .locals 13
    .parameter "jpeg"
    .parameter "date"
    .parameter "storageDirectory"
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 406
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v2, "save image entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/Util;->getImageTitle(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, title:Ljava/lang/String;
    iget-object v11, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v11

    .line 411
    :try_start_0
    iget-object v12, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v4}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->createPicturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/saving/SaveImageService$StoreImage$ImageContainer;-><init>(Lcom/motorola/camera/saving/SaveImageService$StoreImage;Ljava/lang/String;Ljava/lang/String;[BJLandroid/location/Location;ILcom/motorola/camera/saving/SaveImageService$1;)V

    invoke-virtual {v12, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    const/4 v2, 0x0

    #calls: Lcom/motorola/camera/saving/SaveImageService;->setQueueEmptyStatus(Z)V
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->access$1100(Lcom/motorola/camera/saving/SaveImageService;Z)V

    .line 414
    iget v1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    .line 415
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImage - mCurrentMemoryUsed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mCurrentMemoryUsed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  queue size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 418
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCameraKPI"

    const-string v2, "save image exited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    return-void

    .line 418
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateOnMemoryAvailable(II)V
    .locals 2
    .parameter "picSize"
    .parameter "numPics"

    .prologue
    .line 453
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 454
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mAvailableMemoryPicSize:I

    .line 455
    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mAvailableMemoryNumPics:I

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->mSendAvailableMemoryUpdate:Z

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
