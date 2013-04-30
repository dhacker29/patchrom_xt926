.class public Lcom/motorola/camera/saving/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/Storage$1;,
        Lcom/motorola/camera/saving/Storage$StorageReceiver;,
        Lcom/motorola/camera/saving/Storage$UpdateStorageTask;
    }
.end annotation


# static fields
.field public static final BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA:Ljava/lang/String; = "Camera"

.field public static final DCIM:Ljava/lang/String; = null

.field public static final DCIM_DIR:Ljava/lang/String; = null

.field public static final DIRECTORY:Ljava/lang/String; = null

.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final INTERNAL:Ljava/lang/String; = "internal"

.field private static final MAX_ENCODED_FILE_SIZE:J = 0x100000000L

.field private static final MAX_FILE_SIZE_FOR_ENCRYPTION:J = 0x1f400000L

.field public static final PREPARING:J = -0x2L

.field private static final TAG:Ljava/lang/String; = "MotStorage"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field private static mExternalDirectory:Ljava/lang/String;


# instance fields
.field private mEventListener:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

.field private mStorageReceiver:Lcom/motorola/camera/saving/Storage$StorageReceiver;

.field private mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/camera/saving/Storage;->mExternalDirectory:Ljava/lang/String;

    .line 64
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/saving/Storage;->DCIM:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/saving/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/saving/Storage;->DIRECTORY:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/saving/Storage;->DCIM_DIR:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/motorola/camera/saving/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/saving/Storage;->BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/motorola/camera/saving/Storage$StorageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/Storage$StorageReceiver;-><init>(Lcom/motorola/camera/saving/Storage;Lcom/motorola/camera/saving/Storage$1;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageReceiver:Lcom/motorola/camera/saving/Storage$StorageReceiver;

    .line 414
    return-void
.end method

.method static synthetic access$200(Lcom/motorola/camera/saving/Storage;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/saving/Storage;->sendMountEvent(ZLjava/lang/String;)V

    return-void
.end method

.method private getExternalAltStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "SECONDARY_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpaceAsFormattedString(J)Ljava/lang/String;
    .locals 13
    .parameter "availableSpace"

    .prologue
    const/4 v11, 0x3

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v6, remaining:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    .line 258
    .local v0, context:Landroid/content/Context;
    const-wide/16 v9, 0x0

    cmp-long v9, p0, v9

    if-gez v9, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00a2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 285
    :goto_0
    return-object v9

    .line 263
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v9, "#0.00"

    invoke-direct {v1, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, formatter:Ljava/text/NumberFormat;
    new-array v5, v11, [D

    fill-array-data v5, :array_0

    .line 265
    .local v5, memory:[D
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 266
    .local v7, resources:Landroid/content/res/Resources;
    new-array v8, v11, [Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x7f0b00a3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const v10, 0x7f0b00a4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const v10, 0x7f0b00a5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 271
    .local v8, unit:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v5

    if-ge v4, v9, :cond_1

    .line 272
    long-to-double v9, p0

    aget-wide v11, v5, v4

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_2

    .line 273
    long-to-double v9, p0

    aget-wide v11, v5, v4

    div-double v2, v9, v11

    .line 274
    .local v2, freeSpace:D
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .end local v2           #freeSpace:D
    :cond_1
    :goto_2
    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b009f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 276
    :cond_2
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_4

    .line 277
    :cond_3
    long-to-double v9, p0

    aget-wide v11, v5, v4

    div-double v2, v9, v11

    .line 278
    .restart local v2       #freeSpace:D
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 276
    .end local v2           #freeSpace:D
    :cond_4
    long-to-double v9, p0

    add-int/lit8 v11, v4, 0x1

    aget-wide v11, v5, v11

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_3

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 264
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x90t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x30t 0x41t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x41t
    .end array-data
.end method

.method private getStorageFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 411
    return-object v0
.end method

.method private sendMountEvent(ZLjava/lang/String;)V
    .locals 3
    .parameter "mounted"
    .parameter "path"

    .prologue
    .line 451
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "mounted"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    const-string v2, "mount-path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->STORAGE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    .line 455
    .local v1, event:Lcom/motorola/camera/Event;
    iget-object v2, p0, Lcom/motorola/camera/saving/Storage;->mEventListener:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    invoke-interface {v2, v1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 456
    return-void
.end method

.method private sendStorageSwapToast()V
    .locals 7

    .prologue
    .line 347
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getStorageDevice()Ljava/lang/String;

    move-result-object v3

    const-string v4, "internal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    const v2, 0x7f0b00a0

    .line 352
    .local v2, to:I
    :goto_0
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    .line 353
    .local v0, ctx:Landroid/content/Context;
    const v3, 0x7f0b0087

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, text:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v3, v4, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 357
    return-void

    .line 350
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #to:I
    :cond_0
    const v2, 0x7f0b00a1

    .restart local v2       #to:I
    goto :goto_0
.end method


# virtual methods
.method public asyncUpdateStorage(Ljava/lang/String;)V
    .locals 3
    .parameter "storage"

    .prologue
    const/4 v2, 0x1

    .line 372
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->cancel(Z)Z

    .line 376
    :cond_0
    new-instance v0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;-><init>(Lcom/motorola/camera/saving/Storage;Lcom/motorola/camera/saving/Storage$1;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    .line 377
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method

.method public checkCurrentStorage(Z)Z
    .locals 8
    .parameter "image"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 319
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->getStorageDevice()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, currentLocation:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->getCurrentSpace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 321
    .local v2, currentRemainingSpace:Ljava/lang/Long;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 323
    .local v0, alternateRemainingSpace:Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v3

    .line 328
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p1}, Lcom/motorola/camera/saving/Storage;->isSufficientSpace(JZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    :cond_2
    const-string v4, "internal"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    const-string v4, "external"

    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 335
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p1}, Lcom/motorola/camera/saving/Storage;->isSufficientSpace(JZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/motorola/camera/saving/Storage;->sendStorageSwapToast()V

    .line 337
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->swapStoragePreferences()V

    .line 338
    const/4 v3, 0x1

    goto :goto_0

    .line 332
    :cond_3
    const-string v4, "internal"

    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public getAvailableSpace(Ljava/lang/String;)J
    .locals 10
    .parameter "location"

    .prologue
    const-wide/16 v5, -0x1

    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, state:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-wide v5

    .line 195
    :cond_1
    const-string v7, "external"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    invoke-virtual {p0}, Lcom/motorola/camera/saving/Storage;->isExternalMounted()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "mounted"

    .line 201
    :goto_1
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 202
    const-string v7, "MotStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "external storage state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    const-string v7, "checking"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 205
    const-wide/16 v5, -0x2

    goto :goto_0

    .line 196
    :cond_3
    const-string v4, "unmounted"

    goto :goto_1

    .line 198
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 207
    :cond_5
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/Storage;->getDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 220
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    goto :goto_0

    .line 221
    .end local v3           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 223
    const-string v5, "MotStorage"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :cond_6
    const-wide/16 v5, -0x3

    goto :goto_0
.end method

.method public getDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 109
    const-string v1, "internal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/motorola/camera/saving/Storage;->DIRECTORY:Ljava/lang/String;

    .line 121
    :goto_0
    return-object v1

    .line 112
    :cond_0
    sget-object v1, Lcom/motorola/camera/saving/Storage;->mExternalDirectory:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/motorola/camera/saving/Storage;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, baseDir:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/saving/Storage;->DCIM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/saving/Storage;->mExternalDirectory:Ljava/lang/String;

    .line 116
    sget-object v1, Lcom/motorola/camera/saving/Storage;->mExternalDirectory:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    .end local v0           #baseDir:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/motorola/camera/saving/Storage;->mExternalDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDirectoryType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 127
    sget-object v0, Lcom/motorola/camera/saving/Storage;->mExternalDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/Storage;->mExternalDirectory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "external"

    goto :goto_0

    .line 134
    :cond_1
    const-string v0, "internal"

    goto :goto_0
.end method

.method public getMaxVideoFileSize()J
    .locals 7

    .prologue
    const-wide v4, 0x100000000L

    const-wide/32 v2, 0x1f400000

    .line 247
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->getCurrentSpace()J

    move-result-wide v0

    .line 249
    .local v0, availableSpace:J
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->isEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 252
    .end local v0           #availableSpace:J
    :cond_0
    :goto_0
    return-wide v0

    .restart local v0       #availableSpace:J
    :cond_1
    move-wide v0, v2

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    move-wide v0, v4

    goto :goto_0
.end method

.method public getSupportedStorageDirectories()Ljava/util/List;
    .locals 2
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
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, supportedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/motorola/camera/saving/Storage;->isInternalMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/saving/Storage;->isExternalMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    return-object v0
.end method

.method public isExternalMounted()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 149
    .local v3, result:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/motorola/camera/saving/Storage;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/motorola/camera/saving/Storage;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, ext_path:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 153
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, fs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 160
    .end local v1           #ext_path:Ljava/lang/String;
    .end local v2           #fs:Landroid/os/StatFs;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 155
    .restart local v1       #ext_path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MotStorage"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isInternalMounted()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, stateInternal:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSufficientSpace(JZ)Z
    .locals 4
    .parameter "space"
    .parameter "image"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    if-eqz p3, :cond_2

    .line 240
    const-wide/32 v2, 0x5b8d80

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    const-wide/32 v2, 0x2faf080

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraRoll$CameraData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 360
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "MotStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraRoll$CameraData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->cancel(Z)Z

    .line 367
    :cond_1
    new-instance v0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;-><init>(Lcom/motorola/camera/saving/Storage;Lcom/motorola/camera/saving/Storage$1;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    .line 368
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageTask:Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getStorageDevice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    return-void
.end method

.method public registerStorageEvents(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageReceiver:Lcom/motorola/camera/saving/Storage$StorageReceiver;

    invoke-direct {p0}, Lcom/motorola/camera/saving/Storage;->getStorageFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    new-instance v0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;-><init>(Lcom/motorola/camera/saving/Storage;Lcom/motorola/camera/saving/Storage$1;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "external"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 399
    new-instance v0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;-><init>(Lcom/motorola/camera/saving/Storage;Lcom/motorola/camera/saving/Storage$1;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "internal"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void
.end method

.method public setEventListener(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/motorola/camera/saving/Storage;->mEventListener:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    .line 79
    return-void
.end method

.method public showStorageHint(Z)V
    .locals 6
    .parameter "image"

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, noStorageText:I
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/saving/SaveHelper;->getAvailableSpace()Ljava/lang/Long;

    move-result-object v1

    .line 292
    .local v1, remainingSpace:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 293
    const v0, 0x7f0b0083

    .line 304
    :goto_0
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 305
    :cond_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 295
    const v0, 0x7f0b0085

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 297
    const v0, 0x7f0b0086

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p1}, Lcom/motorola/camera/saving/Storage;->isSufficientSpace(JZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    const v0, 0x7f0b0084

    goto :goto_0
.end method

.method public unregisterStorageEvents(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage;->mStorageReceiver:Lcom/motorola/camera/saving/Storage$StorageReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    return-void
.end method
