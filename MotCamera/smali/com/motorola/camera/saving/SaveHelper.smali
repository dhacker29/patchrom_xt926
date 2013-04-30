.class public Lcom/motorola/camera/saving/SaveHelper;
.super Ljava/lang/Object;
.source "SaveHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/motorola/camera/saving/SaveServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SaveHelper"

.field private static sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBoundService:Lcom/motorola/camera/saving/SaveImageService;

.field private volatile mMemoryAvailableNotify:Z

.field private volatile mMode:Lcom/motorola/camera/modes/AbstractMode;

.field private volatile mSaveHelperListener:Lcom/motorola/camera/saving/SaveHelperListener;

.field private mSaveListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mServiceBound:Z

.field private volatile mServiceConnectNotify:Z

.field mServiceIntent:Landroid/content/Intent;

.field private mStorage:Lcom/motorola/camera/saving/Storage;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mAppContext:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveListeners:Ljava/util/ArrayList;

    .line 86
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    const-string v1, "save helper constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    new-instance v0, Lcom/motorola/camera/saving/Storage;

    invoke-direct {v0}, Lcom/motorola/camera/saving/Storage;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    .line 88
    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/saving/SaveHelper;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/motorola/camera/saving/SaveHelper;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/motorola/camera/saving/SaveHelper;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveHelper;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/SaveHelper;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    .line 79
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveHelper;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    return-object v0
.end method

.method public static getSpaceAsFormattedString(J)Ljava/lang/String;
    .locals 1
    .parameter "availableSpace"

    .prologue
    .line 301
    invoke-static {p0, p1}, Lcom/motorola/camera/saving/Storage;->getSpaceAsFormattedString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSaveListener(Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 230
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSaveListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    return-void
.end method

.method public asyncUpdateStorage(Ljava/lang/String;)V
    .locals 1
    .parameter "storageLocation"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/saving/Storage;->asyncUpdateStorage(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public canSave(II)Z
    .locals 1
    .parameter "size"
    .parameter "numPics"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService;->canSave(II)Z

    move-result v0

    return v0
.end method

.method public checkRemainingSpace(Z)Z
    .locals 7
    .parameter "image"

    .prologue
    const-wide/16 v5, 0x0

    .line 277
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getCurrentSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 280
    .local v0, spaceRemaining:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lcom/motorola/camera/saving/Storage;->isSufficientSpace(JZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/saving/Storage;->checkCurrentStorage(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getCurrentSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 287
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lcom/motorola/camera/saving/Storage;->isSufficientSpace(JZ)Z

    move-result v1

    .line 289
    .local v1, sufficientSpace:Z
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-gez v2, :cond_0

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/saving/Storage;->showStorageHint(Z)V

    goto :goto_0
.end method

.method public getAvailableSpace()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getStorageDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxVideoFileSize()J
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/Storage;->getMaxVideoFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "location"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/saving/Storage;->getDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getStorageDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/Storage;->getDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, storeDirectory:Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SaveHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-object v0
.end method

.method public getSupportedStorageDirectories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/Storage;->getSupportedStorageDirectories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onFileSaved(Lcom/motorola/camera/CameraRoll$CameraData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/saving/Storage;->onSaveComplete(Lcom/motorola/camera/CameraRoll$CameraData;)V

    .line 242
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;

    .line 243
    .local v1, listener:Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;
    invoke-interface {v1, p1}, Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;->onSaveComplete(Lcom/motorola/camera/CameraRoll$CameraData;)V

    goto :goto_0

    .line 245
    .end local v1           #listener:Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;
    :cond_0
    return-void
.end method

.method public onMemoryAvailable()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mMemoryAvailableNotify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveHelperListener:Lcom/motorola/camera/saving/SaveHelperListener;

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mMemoryAvailableNotify:Z

    .line 200
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveHelperListener:Lcom/motorola/camera/saving/SaveHelperListener;

    invoke-interface {v0}, Lcom/motorola/camera/saving/SaveHelperListener;->onMemoryAvailable()V

    .line 202
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 173
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving service connect enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceBound:Z

    .line 175
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;->getService()Lcom/motorola/camera/saving/SaveImageService;

    move-result-object v0

    if-eq v1, v0, :cond_1

    .line 177
    check-cast p2, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;->getService()Lcom/motorola/camera/saving/SaveImageService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    .line 179
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceConnectNotify:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveHelperListener:Lcom/motorola/camera/saving/SaveHelperListener;

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceConnectNotify:Z

    .line 181
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveHelperListener:Lcom/motorola/camera/saving/SaveHelperListener;

    invoke-interface {v0}, Lcom/motorola/camera/saving/SaveHelperListener;->onSaveImageServiceConnected()V

    .line 184
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SaveHelper"

    const-string v1, "saving service connect exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceBound:Z

    .line 190
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    const-string v1, "saving service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method

.method public removeSaveListener(Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 235
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSaveListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    return-void
.end method

.method public requestAvailableMemoryUpdate(IILcom/motorola/camera/saving/SaveHelperListener;)Z
    .locals 2
    .parameter "picSize"
    .parameter "picNum"
    .parameter "saveHelperListener"

    .prologue
    const/4 v0, 0x1

    .line 134
    iput-object p3, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveHelperListener:Lcom/motorola/camera/saving/SaveHelperListener;

    .line 135
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/saving/SaveImageService;->canSave(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :goto_0
    return v0

    .line 138
    :cond_0
    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mMemoryAvailableNotify:Z

    .line 139
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v0, p1, p2, p0}, Lcom/motorola/camera/saving/SaveImageService;->setAvailableMemoryListener(IILcom/motorola/camera/saving/SaveServiceListener;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestConnectNotification(Lcom/motorola/camera/saving/SaveHelperListener;)V
    .locals 1
    .parameter "saveHelperListener"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveHelper;->mSaveHelperListener:Lcom/motorola/camera/saving/SaveHelperListener;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceConnectNotify:Z

    .line 227
    return-void
.end method

.method public saveImage([BJLjava/lang/String;Landroid/location/Location;I)V
    .locals 8
    .parameter "data"
    .parameter "date"
    .parameter "storeDirectory"
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/camera/saving/SaveImageService;->saveImage([BJLjava/lang/String;Landroid/location/Location;ILcom/motorola/camera/saving/SaveServiceListener;)V

    .line 155
    return-void
.end method

.method public serviceConnected()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 97
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService entered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 101
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SaveHelper"

    const-string v1, "startService exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    return-void
.end method

.method public startStorageListener(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/saving/Storage;->setEventListener(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 206
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage;->registerStorageEvents(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 108
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService entered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceBound:Z

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mServiceBound:Z

    .line 112
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveImageService;->stopService()V

    .line 120
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SaveHelper"

    const-string v1, "stopService exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    return-void

    .line 118
    :cond_3
    const-string v0, "SaveHelper"

    const-string v1, "stopService was called on a service which was not bound!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopStorageListener()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage;->unregisterStorageEvents(Landroid/content/Context;)V

    .line 211
    return-void
.end method

.method public storageEvent(ZLjava/lang/String;)Z
    .locals 4
    .parameter "mount"
    .parameter "path"

    .prologue
    .line 314
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/saving/SaveHelper;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, storageLocation:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 317
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const/4 v1, 0x1

    .line 324
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/saving/Storage;->getDirectoryType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/saving/Storage;->asyncUpdateStorage(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->reloadPreferenceGroup()V

    :goto_0
    return v1

    .line 321
    :cond_0
    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/saving/Storage;->getDirectoryType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/saving/Storage;->asyncUpdateStorage(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->reloadPreferenceGroup()V

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveHelper;->mStorage:Lcom/motorola/camera/saving/Storage;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/saving/Storage;->getDirectoryType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/saving/Storage;->asyncUpdateStorage(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->reloadPreferenceGroup()V

    throw v1
.end method

.method public updateMediaStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveHelper;->mBoundService:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v0, p1, p2, p0}, Lcom/motorola/camera/saving/SaveImageService;->updateMediaStore(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/camera/saving/SaveServiceListener;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
