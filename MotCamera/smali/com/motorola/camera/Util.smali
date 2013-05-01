.class public Lcom/motorola/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;,
        Lcom/motorola/camera/Util$ReturnResult;
    }
.end annotation


# static fields
.field private static final ACTION_MOT_CGALLERY:Ljava/lang/String; = "android.intent.action.VIEW"

.field private static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field private static final COMMAND:Ljava/lang/String; = "command"

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field private static final FORMAT:Ljava/lang/String; = "yyyyMMdd_kkmmss_SSS"

.field protected static final GESTURE_AMBIGIOUS:Ljava/lang/String; = "AMBIGIOUS"

.field protected static final GESTURE_FALSE_POSITIVE:Ljava/lang/String; = "FALSE_POSITIVE"

.field private static final GESTURE_LOG_END:Ljava/lang/String; = "=====CAMERA_APP_GESTURE_LOG_END====="

.field private static final GESTURE_LOG_FILE:Ljava/lang/String; = null

.field private static final GESTURE_LOG_LINE:Ljava/lang/String; = "====="

.field private static final GESTURE_LOG_START:Ljava/lang/String; = "=====CAMERA_APP_GESTURE_LOG_START====="

.field protected static final GESTURE_POSITIVE:Ljava/lang/String; = "TRUE_POSITIVE"

.field protected static final GESTURE_RECEVIED:Ljava/lang/String; = "GESTURE_RECEIVED"

.field private static final IMAGE_PREFIX:Ljava/lang/String; = "IMG"

.field private static final MUSIC_COMMAND_INTENT:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final PAUSE:Ljava/lang/String; = "pause"

#the value of this static final field might be set in the static constructor
.field public static final SDK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MotoCameraUtil"

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_VIDEO:I = 0x2

.field public static final UI_VER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final VERBOSE:Z = false

.field private static final VIDEO_PREFIX:Ljava/lang/String; = "VID"

.field public static final VIDEO_SNAP_DATA:Ljava/lang/String; = "enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    const-string v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->DEBUG:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Lcom/motorola/camera/DeviceProperties;->getInt(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    .line 85
    sget-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->DEBUG_VERBOSE:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Lcom/motorola/camera/DeviceProperties;->getInt(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_1
    sput-boolean v2, Lcom/motorola/camera/Util;->VERBOSE:Z

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/motorola/camera/Util;->SDK:I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/com.motorola.inpocket/files/cameragesture.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/Util;->GESTURE_LOG_FILE:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0

    :cond_2
    move v2, v1

    .line 85
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/motorola/camera/Util;->GESTURE_LOG_FILE:Ljava/lang/String;

    return-object v0
.end method

.method public static compareFloat(FF)Z
    .locals 2
    .parameter "num1"
    .parameter "num2"

    .prologue
    .line 329
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static computeSampleSize(III)I
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"

    .prologue
    const/4 v1, 0x1

    .line 452
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 453
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 455
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/Util;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static copyMediatoURI(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;I)Lcom/motorola/camera/Util$ReturnResult;
    .locals 9
    .parameter "outputUri"
    .parameter "inputUri"
    .parameter "context"
    .parameter "media_type"

    .prologue
    const/4 v8, -0x1

    .line 604
    new-instance v5, Lcom/motorola/camera/Util$ReturnResult;

    invoke-direct {v5}, Lcom/motorola/camera/Util$ReturnResult;-><init>()V

    .line 606
    .local v5, result:Lcom/motorola/camera/Util$ReturnResult;
    if-nez p0, :cond_3

    .line 607
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoCameraUtil"

    const-string v7, "outputURI is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    const/4 v6, 0x2

    if-ne p3, v6, :cond_2

    .line 609
    #calls: Lcom/motorola/camera/Util$ReturnResult;->setResult(I)V
    invoke-static {v5, v8}, Lcom/motorola/camera/Util$ReturnResult;->access$100(Lcom/motorola/camera/Util$ReturnResult;I)V

    .line 610
    #calls: Lcom/motorola/camera/Util$ReturnResult;->setResultData(Landroid/net/Uri;)V
    invoke-static {v5, p1}, Lcom/motorola/camera/Util$ReturnResult;->access$200(Lcom/motorola/camera/Util$ReturnResult;Landroid/net/Uri;)V

    .line 656
    :cond_1
    :goto_0
    return-object v5

    .line 612
    :cond_2
    invoke-static {p2, p1}, Lcom/motorola/camera/Util;->returnBitmapForResult(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/camera/Util$ReturnResult;

    move-result-object v5

    goto :goto_0

    .line 616
    :cond_3
    const/4 v2, 0x0

    .line 617
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 619
    .local v4, outputStream:Ljava/io/OutputStream;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 621
    .local v3, mContentResolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 622
    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 623
    if-nez v4, :cond_5

    .line 624
    const-string v6, "MotoCameraUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyMediatoURI - save to uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v6, 0x0

    #calls: Lcom/motorola/camera/Util$ReturnResult;->setResult(I)V
    invoke-static {v5, v6}, Lcom/motorola/camera/Util$ReturnResult;->access$100(Lcom/motorola/camera/Util$ReturnResult;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 639
    :goto_1
    if-eqz v2, :cond_4

    .line 641
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 646
    :cond_4
    :goto_2
    if-eqz v4, :cond_1

    .line 648
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "MotoCameraUtil"

    const-string v7, "copyMediatoURI - IOException Ignore close exception for outputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    .end local v1           #ex:Ljava/io/IOException;
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 628
    .local v0, data:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 629
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 630
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 631
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 632
    #calls: Lcom/motorola/camera/Util$ReturnResult;->setResultData(Landroid/net/Uri;)V
    invoke-static {v5, p0}, Lcom/motorola/camera/Util$ReturnResult;->access$200(Lcom/motorola/camera/Util$ReturnResult;Landroid/net/Uri;)V

    .line 633
    const/4 v6, -0x1

    #calls: Lcom/motorola/camera/Util$ReturnResult;->setResult(I)V
    invoke-static {v5, v6}, Lcom/motorola/camera/Util$ReturnResult;->access$100(Lcom/motorola/camera/Util$ReturnResult;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 635
    .end local v0           #data:[B
    :catch_1
    move-exception v1

    .line 636
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_4
    const-string v6, "MotoCameraUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyMediatoURI - IOException save to uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v6, 0x0

    #calls: Lcom/motorola/camera/Util$ReturnResult;->setResult(I)V
    invoke-static {v5, v6}, Lcom/motorola/camera/Util$ReturnResult;->access$100(Lcom/motorola/camera/Util$ReturnResult;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 639
    if-eqz v2, :cond_6

    .line 641
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 646
    :cond_6
    :goto_3
    if-eqz v4, :cond_1

    .line 648
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 649
    :catch_2
    move-exception v1

    .line 650
    const-string v6, "MotoCameraUtil"

    const-string v7, "copyMediatoURI - IOException Ignore close exception for outputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 643
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v6, "MotoCameraUtil"

    const-string v7, "copyMediatoURI - IOException Ignore close exception for inputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 642
    :catch_4
    move-exception v1

    .line 643
    const-string v6, "MotoCameraUtil"

    const-string v7, "copyMediatoURI - IOException Ignore close exception for inputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 639
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_7

    .line 641
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 646
    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 648
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 651
    :cond_8
    :goto_5
    throw v6

    .line 642
    :catch_5
    move-exception v1

    .line 643
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v7, "MotoCameraUtil"

    const-string v8, "copyMediatoURI - IOException Ignore close exception for inputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 649
    .end local v1           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 650
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v7, "MotoCameraUtil"

    const-string v8, "copyMediatoURI - IOException Ignore close exception for outputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static correctOrientationRelativeToSensor(III)I
    .locals 1
    .parameter "orientation"
    .parameter "facing"
    .parameter "sensorOrientation"

    .prologue
    .line 836
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 p0, v0, 0x5a

    .line 837
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 838
    sub-int v0, p2, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 p0, v0, 0x168

    .line 842
    :goto_0
    return p0

    .line 840
    :cond_0
    add-int v0, p2, p0

    rem-int/lit16 p0, v0, 0x168

    goto :goto_0
.end method

.method public static createFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 228
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/saving/SaveHelper;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, directory:Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createVideoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "videoTitle"

    .prologue
    .line 194
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getVideoOutFormatString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, outputformat:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/Util;->createFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, currentFileName:Ljava/lang/String;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 235
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 808
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 809
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 810
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 811
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getGalleryIntent(Ljava/lang/String;Ljava/lang/String;J)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
    .locals 6
    .parameter "filePath"
    .parameter "type"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 474
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 483
    .local v0, data:Landroid/net/Uri;
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 484
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    :goto_1
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 492
    new-instance v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v1, v5, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 508
    :goto_2
    return-object v2

    .line 480
    .end local v0           #data:Landroid/net/Uri;
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #data:Landroid/net/Uri;
    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 496
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 498
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    const-string v2, "com.motorola.motgallery"

    const-string v3, "com.motorola.cgallery.BrowseImages"

    .line 502
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 503
    new-instance v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v1, v5, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 507
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 508
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v1, v5, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2
.end method

.method public static getImageTitle(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_kkmmss_SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntRes(Landroid/hardware/Camera$Size;)I
    .locals 4
    .parameter "picRes"

    .prologue
    .line 422
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getMotocastIntent()Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
    .locals 4

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v0, settingsIntent:Landroid/content/Intent;
    const-string v1, "com.motorola.motoconnect"

    const-string v2, "com.motorola.motoconnect.activities.MCPreferencesActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public static getMotorolaProvidedAPI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter "className"
    .parameter "methodName"

    .prologue
    const/4 v1, 0x0

    .line 822
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 830
    :goto_0
    return-object v1

    .line 823
    :catch_0
    move-exception v0

    .line 825
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 827
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 828
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getOrientationForExif(I)F
    .locals 1
    .parameter "exifOrientation"

    .prologue
    .line 387
    packed-switch p0, :pswitch_data_0

    .line 395
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 389
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 391
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 393
    :pswitch_3
    const/high16 v0, 0x4387

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getPostViewfromData([B)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 249
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 262
    :goto_0
    return-object v3

    .line 251
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->getRawSize()Landroid/graphics/Point;

    move-result-object v1

    .line 252
    .local v1, point:Landroid/graphics/Point;
    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-le v5, v6, :cond_3

    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 253
    .local v4, width:I
    :goto_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 255
    array-length v5, p0

    invoke-static {p0, v8, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 256
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MotoCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " out width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v6, v4}, Lcom/motorola/camera/Util;->computeSampleSize(III)I

    move-result v2

    .line 258
    .local v2, sampleSize:I
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " sampleSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 260
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    array-length v5, p0

    invoke-static {p0, v8, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 262
    .local v3, thumb:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 252
    .end local v0           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #sampleSize:I
    .end local v3           #thumb:Landroid/graphics/Bitmap;
    .end local v4           #width:I
    :cond_3
    iget v4, v1, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method public static getPostViewfromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 272
    const/4 v9, 0x0

    .line 273
    .local v9, bmp:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 274
    .local v15, filename:Ljava/lang/String;
    const/16 v16, 0x0

    .line 277
    .local v16, orientation:F
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "orientation"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v5, v3

    .line 278
    .local v5, proj:[Ljava/lang/String;
    new-instance v2, Landroid/content/CursorLoader;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v2, cl:Landroid/content/CursorLoader;
    invoke-virtual {v2}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v11

    .line 281
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    const-string v3, "orientation"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 284
    .local v17, orientationColumn:I
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 285
    .local v12, dataColumn:I
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v16

    .line 286
    new-instance v20, Ljava/net/URI;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 287
    .local v20, uriData:Ljava/net/URI;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 294
    .end local v12           #dataColumn:I
    .end local v17           #orientationColumn:I
    .end local v20           #uriData:Ljava/net/URI;
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 298
    .local v18, resolver:Landroid/content/ContentResolver;
    const/16 v19, 0x0

    .line 300
    .local v19, stream:Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v19

    .line 302
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v10, v3, [B

    .line 303
    .local v10, buffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    .line 304
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 306
    invoke-static {v10}, Lcom/motorola/camera/Util;->getPostViewfromData([B)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/motorola/camera/Util;->rotateIfNecessary(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v9

    .line 320
    :goto_1
    if-eqz v19, :cond_2

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 325
    .end local v10           #buffer:[B
    :cond_2
    :goto_2
    return-object v9

    .line 289
    .end local v18           #resolver:Landroid/content/ContentResolver;
    .end local v19           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v13

    .line 290
    .local v13, e:Ljava/net/URISyntaxException;
    :try_start_3
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoCameraUtil"

    const-string v4, "filename not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :cond_3
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 291
    .end local v13           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v13

    .line 292
    .local v13, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MotoCameraUtil"

    const-string v4, "column index not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    :cond_4
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 311
    .restart local v10       #buffer:[B
    .restart local v18       #resolver:Landroid/content/ContentResolver;
    .restart local v19       #stream:Ljava/io/InputStream;
    :cond_6
    :try_start_5
    invoke-static {v10}, Lcom/motorola/camera/Util;->getPostViewfromData([B)Landroid/graphics/Bitmap;

    move-result-object v3

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v9

    goto :goto_1

    .line 321
    :catch_2
    move-exception v14

    .line 322
    .local v14, ex:Ljava/io/IOException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCameraUtil"

    const-string v4, "input stream close failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 314
    .end local v10           #buffer:[B
    .end local v14           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 315
    .local v14, ex:Ljava/io/FileNotFoundException;
    :try_start_6
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "MotoCameraUtil"

    const-string v4, "File NotFound"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 320
    :cond_7
    if-eqz v19, :cond_2

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 321
    :catch_4
    move-exception v14

    .line 322
    .local v14, ex:Ljava/io/IOException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCameraUtil"

    const-string v4, "input stream close failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 316
    .end local v14           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v14

    .line 317
    .restart local v14       #ex:Ljava/io/IOException;
    :try_start_8
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "MotoCameraUtil"

    const-string v4, "IOException while reading inputstream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 320
    :cond_8
    if-eqz v19, :cond_2

    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 321
    :catch_6
    move-exception v14

    .line 322
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCameraUtil"

    const-string v4, "input stream close failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 319
    .end local v14           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 320
    if-eqz v19, :cond_9

    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 323
    :cond_9
    :goto_3
    throw v3

    .line 321
    :catch_7
    move-exception v14

    .line 322
    .restart local v14       #ex:Ljava/io/IOException;
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "MotoCameraUtil"

    const-string v6, "input stream close failed"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getPreviewFrameSize(Landroid/graphics/Point;F)Landroid/graphics/Point;
    .locals 7
    .parameter "displaySize"
    .parameter "aspectRatio"

    .prologue
    const-wide v5, 0x3fa999999999999aL

    .line 765
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 767
    .local v0, p:Landroid/graphics/Point;
    float-to-double v1, p1

    const-wide v3, 0x3ffc71c71c71c71cL

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_2

    .line 768
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_0

    .line 769
    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_1

    .line 770
    iget v1, p0, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 771
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 786
    :cond_0
    :goto_0
    return-object v0

    .line 773
    :cond_1
    iget v1, p0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 774
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 778
    :cond_2
    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_3

    .line 779
    iget v1, p0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 780
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 782
    :cond_3
    iget v1, p0, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 783
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JLjava/lang/String;ZI)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "resolver"
    .parameter "id"
    .parameter "fileName"
    .parameter "image"
    .parameter "side"

    .prologue
    const/4 v2, 0x1

    .line 346
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 347
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 348
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_0

    .line 349
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 350
    invoke-static {p3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 351
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 352
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p5}, Lcom/motorola/camera/Util;->computeSampleSize(III)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 355
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 356
    invoke-static {p3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    invoke-static {p3, v0}, Lcom/motorola/camera/Util;->rotateIfNecessary(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-static {p0, p1, p2, v2, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTimeLapseVideoLength(JDI)J
    .locals 6
    .parameter "deltaMs"
    .parameter "timeBetweenCapture"
    .parameter "fps"

    .prologue
    .line 760
    long-to-double v2, p0

    div-double v0, v2, p2

    .line 761
    .local v0, numberOfFrames:D
    int-to-double v2, p4

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method public static getVideoTitle(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_kkmmss_SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFilePathValid(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileName"

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 435
    .local v1, fi:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    .end local v1           #fi:Ljava/io/FileInputStream;
    .local v2, fi:Ljava/io/FileInputStream;
    if-eqz v2, :cond_0

    .line 437
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v1, v2

    .line 446
    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v1       #fi:Ljava/io/FileInputStream;
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 441
    const/4 v3, 0x0

    goto :goto_1

    .line 442
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 444
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 442
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fi:Ljava/io/FileInputStream;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v1       #fi:Ljava/io/FileInputStream;
    goto :goto_3

    .line 439
    .end local v1           #fi:Ljava/io/FileInputStream;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v1       #fi:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static isInPortrait()Z
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 240
    .local v0, portrait:I
    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    .line 242
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraUtil"

    const-string v2, "is in portrait"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    const/4 v1, 0x1

    .line 245
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .parameter "targetPackage"
    .parameter "context"

    .prologue
    .line 179
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static launchSettingsPopup()Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    .locals 3

    .prologue
    .line 561
    new-instance v0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;

    invoke-direct {v0}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;-><init>()V

    .line 562
    .local v0, popupData:Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    const v1, 0x7f0b007e

    iput v1, v0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->message:I

    .line 563
    const v1, 0x7f0b007d

    iput v1, v0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->title:I

    .line 564
    const v1, 0x7f0b0079

    new-instance v2, Lcom/motorola/camera/Util$2;

    invoke-direct {v2}, Lcom/motorola/camera/Util$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 572
    const v1, 0x7f0b0073

    new-instance v2, Lcom/motorola/camera/Util$3;

    invoke-direct {v2}, Lcom/motorola/camera/Util$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->setNegativeButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 577
    return-object v0
.end method

.method public static logGestureData(Ljava/lang/String;)V
    .locals 2
    .parameter "debugString"

    .prologue
    .line 137
    sget-boolean v1, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/camera/Util$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Util$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    .local v0, logThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method

.method public static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 713
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 714
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 715
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 716
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 717
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 719
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 723
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 724
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 728
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 733
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 736
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 740
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 745
    if-eqz p2, :cond_5

    .line 746
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 748
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 749
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 754
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private static prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 460
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 461
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method private static returnBitmapForResult(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/camera/Util$ReturnResult;
    .locals 15
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 664
    new-instance v13, Lcom/motorola/camera/Util$ReturnResult;

    invoke-direct {v13}, Lcom/motorola/camera/Util$ReturnResult;-><init>()V

    .line 666
    .local v13, result:Lcom/motorola/camera/Util$ReturnResult;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 667
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 668
    .local v11, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 670
    .local v9, id:J
    const/4 v1, 0x1

    invoke-static {v12, v9, v10, v1, v11}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 672
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 674
    .local v5, bmpMtx:Landroid/graphics/Matrix;
    const/4 v14, 0x0

    .line 675
    .local v14, retBmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 678
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 679
    .local v4, height:I
    mul-int v1, v3, v4

    const v2, 0x12c00

    if-le v1, v2, :cond_3

    .line 680
    const/16 v8, 0x140

    .line 681
    .local v8, dstWidth:I
    const/16 v7, 0xf0

    .line 682
    .local v7, dstHeight:I
    if-ge v3, v4, :cond_0

    .line 684
    const/16 v8, 0xf0

    .line 685
    const/16 v7, 0x140

    .line 687
    :cond_0
    int-to-float v1, v8

    int-to-float v2, v3

    div-float/2addr v1, v2

    int-to-float v2, v7

    int-to-float v6, v4

    div-float/2addr v2, v6

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 688
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 695
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v7           #dstHeight:I
    .end local v8           #dstWidth:I
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    .line 696
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    #setter for: Lcom/motorola/camera/Util$ReturnResult;->sResultIntent:Landroid/content/Intent;
    invoke-static {v13, v1}, Lcom/motorola/camera/Util$ReturnResult;->access$302(Lcom/motorola/camera/Util$ReturnResult;Landroid/content/Intent;)Landroid/content/Intent;

    .line 697
    const/4 v1, -0x1

    #setter for: Lcom/motorola/camera/Util$ReturnResult;->result:I
    invoke-static {v13, v1}, Lcom/motorola/camera/Util$ReturnResult;->access$402(Lcom/motorola/camera/Util$ReturnResult;I)I

    .line 700
    :cond_2
    return-object v13

    .line 690
    .restart local v3       #width:I
    .restart local v4       #height:I
    :cond_3
    move-object v14, v0

    goto :goto_0
.end method

.method private static rotateIfNecessary(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "fileName"
    .parameter "bitmap"

    .prologue
    .line 366
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MotoCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotateStart  bitmap +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    if-nez p1, :cond_2

    const/4 v4, 0x0

    .line 383
    :cond_1
    :goto_0
    return-object v4

    .line 369
    :cond_2
    const/4 v1, 0x0

    .line 370
    .local v1, exifInterface:Landroid/media/ExifInterface;
    const/4 v3, 0x0

    .line 371
    .local v3, orientation:I
    move-object v4, p1

    .line 373
    .local v4, rotatedBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    .local v2, exifInterface:Landroid/media/ExifInterface;
    :try_start_1
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 375
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MotoCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotateIfNecessary orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    if-eqz v3, :cond_4

    .line 377
    invoke-static {v3}, Lcom/motorola/camera/Util;->getOrientationForExif(I)F

    move-result v5

    invoke-static {p1, v5}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :cond_4
    move-object v1, v2

    .line 382
    .end local v2           #exifInterface:Landroid/media/ExifInterface;
    .restart local v1       #exifInterface:Landroid/media/ExifInterface;
    :goto_1
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MotoCameraUtil"

    const-string v6, "rotateStart -"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 379
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    .restart local v2       #exifInterface:Landroid/media/ExifInterface;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #exifInterface:Landroid/media/ExifInterface;
    .restart local v1       #exifInterface:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/high16 v2, 0x3f00

    .line 401
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 403
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 404
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 408
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 412
    .local v7, rotated:Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    .line 414
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 415
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "MotoCameraUtil"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v7, p0

    .line 418
    goto :goto_0
.end method

.method public static secondToTimeString(J)Ljava/lang/String;
    .locals 14
    .parameter "seconds"

    .prologue
    .line 523
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-ltz v10, :cond_3

    .line 524
    const-wide/16 v10, 0xe10

    div-long v0, p0, v10

    .line 525
    .local v0, hours:J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v0

    sub-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long v3, v10, v12

    .line 526
    .local v3, minutes:J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v0

    sub-long v10, p0, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v3

    sub-long v6, v10, v12

    .line 528
    .local v6, remainderSeconds:J
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 529
    .local v8, secondsString:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 530
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 532
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, minutesString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 534
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, hoursString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 538
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    .end local v0           #hours:J
    .end local v2           #hoursString:Ljava/lang/String;
    .end local v3           #minutes:J
    .end local v5           #minutesString:Ljava/lang/String;
    .end local v6           #remainderSeconds:J
    .end local v8           #secondsString:Ljava/lang/String;
    .local v9, text:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 542
    .end local v9           #text:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method public static showDialogAndFinish(Landroid/app/Activity;I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 588
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close application with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b007a

    new-instance v3, Lcom/motorola/camera/Util$4;

    invoke-direct {v3, p0}, Lcom/motorola/camera/Util$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 599
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static showToastPopup(II)Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    .locals 1
    .parameter "title"
    .parameter "message"

    .prologue
    .line 581
    new-instance v0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;

    invoke-direct {v0}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;-><init>()V

    .line 582
    .local v0, popupData:Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    iput p0, v0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->title:I

    .line 583
    iput p1, v0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->message:I

    .line 584
    return-object v0
.end method

.method public static stopBackgroundMusic(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 798
    return-void
.end method

.method public static stringToArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "list"
    .parameter "expression"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 709
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
