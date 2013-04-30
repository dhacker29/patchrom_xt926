.class public Lcom/motorola/camera/CameraRoll;
.super Ljava/lang/Object;
.source "CameraRoll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/CameraRoll$CameraData;,
        Lcom/motorola/camera/CameraRoll$CameraRollUpdate;,
        Lcom/motorola/camera/CameraRoll$SortComparator;,
        Lcom/motorola/camera/CameraRoll$UpdateCombinedTask;
    }
.end annotation


# static fields
.field private static final CAMERA:Ljava/lang/String; = "Camera"

.field private static final DCIM:Ljava/lang/String; = "dcim"

.field private static final IMAGE_URI:Landroid/net/Uri; = null

.field private static final INDEX_DATA:I = 0x2

.field private static final INDEX_DATE:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_ORIENTATION:I = 0x3

.field private static final SDCARD:Ljava/lang/String; = "sdcard"

.field private static final TAG:Ljava/lang/String; = "CameraRoll"

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field private static final UPDATE_DATA_IMAGE:I = 0x1

.field private static final UPDATE_DATA_VIDEO:I = 0x0

.field private static final UPDATE_MESSAGE:I = 0x2

.field private static final VIDEO_URI:Landroid/net/Uri;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCombinedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataHandler:Landroid/os/Handler;

.field private mDataThread:Landroid/os/HandlerThread;

.field private mExternalPath:Ljava/lang/String;

.field private mImageData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalPath:Ljava/lang/String;

.field private mListener:Lcom/motorola/camera/CameraRoll$CameraRollUpdate;

.field private mMainHandler:Landroid/os/Handler;

.field private mRequestLimit:I

.field private mVideoData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/camera/CameraRoll;->IMAGE_URI:Landroid/net/Uri;

    .line 66
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/camera/CameraRoll;->VIDEO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "application"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/CameraRoll;->mRequestLimit:I

    .line 98
    iput-object v2, p0, Lcom/motorola/camera/CameraRoll;->mInternalPath:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/motorola/camera/CameraRoll;->mExternalPath:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll;->mApplication:Landroid/app/Application;

    .line 103
    new-instance v1, Lcom/motorola/camera/CameraRoll$1;

    invoke-virtual {p1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/CameraRoll$1;-><init>(Lcom/motorola/camera/CameraRoll;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mMainHandler:Landroid/os/Handler;

    .line 121
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DataThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 124
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 125
    .local v0, looper:Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v1, Lcom/motorola/camera/CameraRoll$2;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/CameraRoll$2;-><init>(Lcom/motorola/camera/CameraRoll;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mDataHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Application;I)V
    .locals 0
    .parameter "application"
    .parameter "limit"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/motorola/camera/CameraRoll;-><init>(Landroid/app/Application;)V

    .line 169
    iput p2, p0, Lcom/motorola/camera/CameraRoll;->mRequestLimit:I

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/CameraRoll;)Lcom/motorola/camera/CameraRoll$CameraRollUpdate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mListener:Lcom/motorola/camera/CameraRoll$CameraRollUpdate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/CameraRoll;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/camera/CameraRoll;->updateImageData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/camera/CameraRoll;->getVideoData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/camera/CameraRoll;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/camera/CameraRoll;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/camera/CameraRoll;->updateVideoData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/camera/CameraRoll;->getImageData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/camera/CameraRoll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/camera/CameraRoll;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getImageData()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v17, updateData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "datetaken"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "_data"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "orientation"

    aput-object v6, v4, v2

    .line 308
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "mime_type=\'image/jpeg\' AND "

    .line 310
    .local v5, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/CameraRoll;->mExternalPath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 311
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v2

    const-string v6, "external"

    invoke-virtual {v2, v6}, Lcom/motorola/camera/saving/SaveHelper;->getStorageLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/camera/CameraRoll;->mExternalPath:Ljava/lang/String;

    .line 313
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/camera/CameraRoll;->mExternalPath:Ljava/lang/String;

    .line 315
    .local v13, external:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/CameraRoll;->mInternalPath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 316
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v2

    const-string v6, "internal"

    invoke-virtual {v2, v6}, Lcom/motorola/camera/saving/SaveHelper;->getStorageLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/camera/CameraRoll;->mInternalPath:Ljava/lang/String;

    .line 318
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/camera/CameraRoll;->mInternalPath:Ljava/lang/String;

    .line 320
    .local v15, internal:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 359
    :cond_2
    :goto_0
    return-object v17

    .line 322
    :cond_3
    if-nez v13, :cond_7

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_data"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " LIKE \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    :goto_1
    const-string v7, "datetaken DESC,_id DESC"

    .line 331
    .local v7, order:Ljava/lang/String;
    sget-object v3, Lcom/motorola/camera/CameraRoll;->IMAGE_URI:Landroid/net/Uri;

    .line 332
    .local v3, baseUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/CameraRoll;->mRequestLimit:I

    if-lez v2, :cond_4

    .line 333
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/CameraRoll;->mRequestLimit:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 339
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 341
    :cond_5
    new-instance v9, Lcom/motorola/camera/CameraRoll$CameraData;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Lcom/motorola/camera/CameraRoll$CameraData;-><init>(Lcom/motorola/camera/CameraRoll$1;)V

    .line 342
    .local v9, data:Lcom/motorola/camera/CameraRoll$CameraData;
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 343
    .local v14, id:I
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, dataName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 345
    .local v11, dateTaken:J
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 346
    .local v16, orientation:I
    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->_id:J
    invoke-static {v9, v0, v1}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1302(Lcom/motorola/camera/CameraRoll$CameraData;J)J

    .line 347
    const/4 v2, 0x0

    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I
    invoke-static {v9, v2}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1402(Lcom/motorola/camera/CameraRoll$CameraData;I)I

    .line 348
    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1502(Lcom/motorola/camera/CameraRoll$CameraData;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J
    invoke-static {v9, v11, v12}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1102(Lcom/motorola/camera/CameraRoll$CameraData;J)J

    .line 350
    move/from16 v0, v16

    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->orientation:I
    invoke-static {v9, v0}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1602(Lcom/motorola/camera/CameraRoll$CameraData;I)I

    .line 351
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 355
    .end local v9           #data:Lcom/motorola/camera/CameraRoll$CameraData;
    .end local v10           #dataName:Ljava/lang/String;
    .end local v11           #dateTaken:J
    .end local v14           #id:I
    .end local v16           #orientation:I
    :cond_6
    if-eqz v8, :cond_2

    .line 356
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 325
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v7           #order:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "( "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_data"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " LIKE \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ) OR "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "( "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_data"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " LIKE \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " )"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method private getVideoData()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v16, updateData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "_data"

    aput-object v5, v3, v1

    .line 373
    .local v3, projection:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 375
    .local v4, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/CameraRoll;->mExternalPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 376
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v1

    const-string v5, "external"

    invoke-virtual {v1, v5}, Lcom/motorola/camera/saving/SaveHelper;->getStorageLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/CameraRoll;->mExternalPath:Ljava/lang/String;

    .line 378
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/camera/CameraRoll;->mExternalPath:Ljava/lang/String;

    .line 380
    .local v12, external:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/CameraRoll;->mInternalPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 381
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v1

    const-string v5, "internal"

    invoke-virtual {v1, v5}, Lcom/motorola/camera/saving/SaveHelper;->getStorageLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/CameraRoll;->mInternalPath:Ljava/lang/String;

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/camera/CameraRoll;->mInternalPath:Ljava/lang/String;

    .line 385
    .local v15, internal:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 424
    :cond_2
    :goto_0
    return-object v16

    .line 387
    :cond_3
    if-nez v12, :cond_7

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data LIKE \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    :goto_1
    const-string v6, "datetaken DESC,_id DESC"

    .line 396
    .local v6, order:Ljava/lang/String;
    sget-object v2, Lcom/motorola/camera/CameraRoll;->VIDEO_URI:Landroid/net/Uri;

    .line 398
    .local v2, baseUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/CameraRoll;->mRequestLimit:I

    if-lez v1, :cond_4

    .line 399
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/CameraRoll;->mRequestLimit:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 402
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/CameraRoll;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 405
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 407
    :cond_5
    new-instance v8, Lcom/motorola/camera/CameraRoll$CameraData;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/motorola/camera/CameraRoll$CameraData;-><init>(Lcom/motorola/camera/CameraRoll$1;)V

    .line 408
    .local v8, data:Lcom/motorola/camera/CameraRoll$CameraData;
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v13, v1

    .line 409
    .local v13, id:J
    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->_id:J
    invoke-static {v8, v13, v14}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1302(Lcom/motorola/camera/CameraRoll$CameraData;J)J

    .line 410
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, dataName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 412
    .local v10, dateTaken:J
    const/4 v1, 0x1

    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I
    invoke-static {v8, v1}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1402(Lcom/motorola/camera/CameraRoll$CameraData;I)I

    .line 413
    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1502(Lcom/motorola/camera/CameraRoll$CameraData;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J
    invoke-static {v8, v10, v11}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1102(Lcom/motorola/camera/CameraRoll$CameraData;J)J

    .line 415
    const/4 v1, 0x0

    #setter for: Lcom/motorola/camera/CameraRoll$CameraData;->orientation:I
    invoke-static {v8, v1}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1602(Lcom/motorola/camera/CameraRoll$CameraData;I)I

    .line 416
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 420
    .end local v8           #data:Lcom/motorola/camera/CameraRoll$CameraData;
    .end local v9           #dataName:Ljava/lang/String;
    .end local v10           #dateTaken:J
    .end local v13           #id:J
    :cond_6
    if-eqz v7, :cond_2

    .line 421
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 390
    .end local v2           #baseUri:Landroid/net/Uri;
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "( _data LIKE \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ) OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "( "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_data"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " LIKE \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " )"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private declared-synchronized updateImageData()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 197
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/camera/CameraRoll;->getImageData()Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 202
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    if-eqz v0, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "CameraRoll"

    const-string v4, " no update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    :cond_3
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    .line 211
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    :try_start_5
    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    :try_start_6
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 217
    :try_start_7
    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 218
    :try_start_8
    iput-object v0, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    .line 220
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/camera/CameraRoll$SortComparator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/CameraRoll$SortComparator;-><init>(Lcom/motorola/camera/CameraRoll;Lcom/motorola/camera/CameraRoll$1;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 222
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 215
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method private declared-synchronized updateVideoData()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 226
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/camera/CameraRoll;->getVideoData()Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 232
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v3, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    monitor-exit v2

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 236
    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    :cond_2
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mVideoData:Ljava/util/ArrayList;

    .line 238
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    :try_start_5
    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 241
    :try_start_6
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll;->mImageData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 244
    :try_start_7
    iget-object v2, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 245
    :try_start_8
    iput-object v0, p0, Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;

    .line 246
    new-instance v1, Lcom/motorola/camera/CameraRoll$SortComparator;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/CameraRoll$SortComparator;-><init>(Lcom/motorola/camera/CameraRoll;Lcom/motorola/camera/CameraRoll$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 248
    const/4 v1, 0x1

    goto :goto_0

    .line 242
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 247
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 434
    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mListener:Lcom/motorola/camera/CameraRoll$CameraRollUpdate;

    .line 437
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 439
    iput-object v1, p0, Lcom/motorola/camera/CameraRoll;->mDataThread:Landroid/os/HandlerThread;

    .line 441
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/motorola/camera/CameraRoll$UpdateCombinedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/CameraRoll$UpdateCombinedTask;-><init>(Lcom/motorola/camera/CameraRoll;Lcom/motorola/camera/CameraRoll$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraRoll$UpdateCombinedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    return-void
.end method

.method public setUpdateListener(Lcom/motorola/camera/CameraRoll$CameraRollUpdate;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll;->mListener:Lcom/motorola/camera/CameraRoll$CameraRollUpdate;

    .line 179
    return-void
.end method
