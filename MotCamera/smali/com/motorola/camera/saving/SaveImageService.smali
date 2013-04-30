.class public Lcom/motorola/camera/saving/SaveImageService;
.super Landroid/app/Service;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/SaveImageService$1;,
        Lcom/motorola/camera/saving/SaveImageService$StoreImage;,
        Lcom/motorola/camera/saving/SaveImageService$MainHandler;,
        Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;
    }
.end annotation


# instance fields
.field private final AVAILABLE_PROCESS_MEMORY:I

.field private final MEMORY_AVAILABLE:I

.field private final SEND_IMAGE_DETAILS:I

.field private final STOP_SELF:I

.field private TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private volatile mSaveQueueEmpty:Z

.field private mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;

.field private volatile mStopRequested:Z

.field protected mStoreImage:Lcom/motorola/camera/saving/SaveImageService$StoreImage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    const-string v0, "SaveImageService"

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    .line 54
    const v0, 0xe4e1c0

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService;->AVAILABLE_PROCESS_MEMORY:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService;->MEMORY_AVAILABLE:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService;->STOP_SELF:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService;->SEND_IMAGE_DETAILS:I

    .line 58
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;

    invoke-direct {v0, p0}, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;-><init>(Lcom/motorola/camera/saving/SaveImageService;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mBinder:Landroid/os/IBinder;

    .line 59
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$1;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mStoreImage:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    .line 63
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/SaveImageService$MainHandler;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$1;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    .line 274
    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/camera/saving/SaveImageService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->setQueueEmptyStatus(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/motorola/camera/saving/SaveImageService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/motorola/camera/saving/SaveImageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService;->onMemoryAvailable()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/camera/saving/SaveImageService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/camera/saving/SaveImageService;)Lcom/motorola/camera/saving/SaveServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;

    return-object v0
.end method

.method private onMemoryAvailable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method

.method private setQueueEmptyStatus(Z)V
    .locals 3
    .parameter "queueStatus"

    .prologue
    .line 173
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQueueEmptyStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueueEmpty:Z

    .line 175
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueueEmpty:Z

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService;->stopOurService()V

    .line 178
    :cond_1
    return-void
.end method

.method private stopOurService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopOurService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/saving/SaveImageService;->mStopRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopOurService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueueEmpty:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mStopRequested:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueueEmpty:Z

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method protected canSave(II)Z
    .locals 1
    .parameter "size"
    .parameter "numPics"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mStoreImage:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->canSave(II)Z
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$500(Lcom/motorola/camera/saving/SaveImageService$StoreImage;II)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 76
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind with intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate called:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 112
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy called:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 88
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand called with intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mStoreImage:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->createThread()V
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$200(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 100
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected saveImage([BJLjava/lang/String;Landroid/location/Location;ILcom/motorola/camera/saving/SaveServiceListener;)V
    .locals 7
    .parameter "data"
    .parameter "date"
    .parameter "storageDirectory"
    .parameter "location"
    .parameter "orientation"
    .parameter "listener"

    .prologue
    .line 137
    iput-object p7, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;

    .line 138
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mStoreImage:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->saveImage([BJLjava/lang/String;Landroid/location/Location;I)V
    invoke-static/range {v0 .. v6}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$400(Lcom/motorola/camera/saving/SaveImageService$StoreImage;[BJLjava/lang/String;Landroid/location/Location;I)V

    .line 139
    return-void
.end method

.method public setAvailableMemoryListener(IILcom/motorola/camera/saving/SaveServiceListener;)V
    .locals 1
    .parameter "picSize"
    .parameter "numPics"
    .parameter "listener"

    .prologue
    .line 163
    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;

    .line 164
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mStoreImage:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->updateOnMemoryAvailable(II)V
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$600(Lcom/motorola/camera/saving/SaveImageService$StoreImage;II)V

    .line 165
    return-void
.end method

.method protected stopService()V
    .locals 2

    .prologue
    .line 119
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    const-string v1, "stopService called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mStopRequested:Z

    .line 123
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mStoreImage:Lcom/motorola/camera/saving/SaveImageService$StoreImage;

    #calls: Lcom/motorola/camera/saving/SaveImageService$StoreImage;->cleanup()V
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService$StoreImage;->access$300(Lcom/motorola/camera/saving/SaveImageService$StoreImage;)V

    .line 125
    invoke-direct {p0}, Lcom/motorola/camera/saving/SaveImageService;->stopOurService()V

    .line 126
    return-void
.end method

.method public updateMediaStore(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/camera/saving/SaveServiceListener;)Landroid/net/Uri;
    .locals 14
    .parameter "uri"
    .parameter "contentValues"
    .parameter "serviceListener"

    .prologue
    .line 220
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "content:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    .line 221
    .local v7, isContentUri:Z
    :goto_0
    const-string v10, "content://media/external/video/media"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 223
    .local v9, videoTable:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 224
    .local v1, contentUri:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    .line 225
    .local v2, ctx:Landroid/content/Context;
    if-nez v7, :cond_5

    .line 227
    :try_start_0
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v9, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 228
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v10, v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current video URI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    :goto_1
    const-string v10, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, fileName:Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v8, vFile:Ljava/io/File;
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 251
    .local v6, fileUri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v10, v11, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 256
    .end local v6           #fileUri:Landroid/net/Uri;
    .end local v8           #vFile:Ljava/io/File;
    :cond_1
    :goto_2
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;

    .line 258
    if-eqz v1, :cond_2

    .line 259
    new-instance v3, Lcom/motorola/camera/CameraRoll$CameraData;

    const/4 v10, 0x1

    invoke-direct {v3, v1, v5, v10}, Lcom/motorola/camera/CameraRoll$CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 260
    .local v3, data:Lcom/motorola/camera/CameraRoll$CameraData;
    iget-object v10, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;

    invoke-interface {v10, v3}, Lcom/motorola/camera/saving/SaveServiceListener;->onFileSaved(Lcom/motorola/camera/CameraRoll$CameraData;)V

    .line 262
    .end local v3           #data:Lcom/motorola/camera/CameraRoll$CameraData;
    :cond_2
    return-object v1

    .line 220
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v2           #ctx:Landroid/content/Context;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v7           #isContentUri:Z
    .end local v9           #videoTable:Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 229
    .restart local v1       #contentUri:Landroid/net/Uri;
    .restart local v2       #ctx:Landroid/content/Context;
    .restart local v7       #isContentUri:Z
    .restart local v9       #videoTable:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 230
    .local v4, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 232
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current video URI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current video URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v10

    .line 236
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    move-object v1, p1

    .line 241
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current video URI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 238
    :catch_1
    move-exception v4

    .line 239
    .local v4, e:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .line 241
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current video URI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v10

    sget-boolean v11, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current video URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v10

    .line 252
    .restart local v5       #fileName:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 253
    .local v4, e:Ljava/lang/Exception;
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to send media scanner intent"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
