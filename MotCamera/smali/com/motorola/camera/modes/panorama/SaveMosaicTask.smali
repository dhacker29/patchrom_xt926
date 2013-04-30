.class public Lcom/motorola/camera/modes/panorama/SaveMosaicTask;
.super Landroid/os/AsyncTask;
.source "SaveMosaicTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/motorola/camera/modes/panorama/MosaicJpeg;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_TIME_FORMAT_STR:Ljava/lang/String; = "kk/1,mm/1,ss/1"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

.field private mGPSDateStampFormat:Ljava/text/DateFormat;

.field private mGPSTimeStampFormat:Ljava/text/DateFormat;

.field private final mListener:Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;

.field private final mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mReportProgressTask:Lcom/motorola/camera/modes/panorama/ReportProgressTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/modes/panorama/ExifInfo;Lcom/motorola/camera/PanoramaManager;Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;)V
    .locals 4
    .parameter "exif"
    .parameter "panoramaManager"
    .parameter "listener"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mReportProgressTask:Lcom/motorola/camera/modes/panorama/ReportProgressTask;

    .line 58
    iput-object p1, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    .line 59
    iput-object p2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    .line 60
    iput-object p3, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mListener:Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;

    .line 62
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 67
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "kk/1,mm/1,ss/1"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 68
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 69
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 70
    .local v1, tzUTC:Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    iget-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 72
    return-void
.end method

.method private correctExifInfo(Ljava/io/File;Lcom/motorola/camera/modes/panorama/ExifInfo;)V
    .locals 13
    .parameter "file"
    .parameter "exifInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 226
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, exif:Landroid/media/ExifInterface;
    const-string v7, "DateTime"

    iget-object v8, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mDateTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v9, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mDateTimeTaken:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v7, "Orientation"

    iget v8, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mOrientation:I

    invoke-static {v8}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v7, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    if-eqz v7, :cond_1

    .line 234
    iget-object v7, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    .line 235
    .local v0, altitude:D
    iget-object v7, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 236
    .local v5, longitude:D
    iget-object v7, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 237
    .local v3, latitude:D
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 238
    sget-object v7, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "altitude: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", longitude: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", latitude: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    const-string v7, "GPSLatitude"

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/motorola/camera/modes/panorama/Geographic;->decimalToDMS(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v7, "GPSLongitude"

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/motorola/camera/modes/panorama/Geographic;->decimalToDMS(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v7, "GPSAltitude"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v7, "GPSAltitudeRef"

    const-string v8, "0"

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v8, "GPSLatitudeRef"

    cmpl-double v7, v3, v11

    if-lez v7, :cond_2

    const-string v7, "N"

    :goto_0
    invoke-virtual {v2, v8, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v8, "GPSLongitudeRef"

    cmpl-double v7, v5, v11

    if-lez v7, :cond_3

    const-string v7, "E"

    :goto_1
    invoke-virtual {v2, v8, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v7, "GPSDateStamp"

    iget-object v8, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mGPSDateStampFormat:Ljava/text/DateFormat;

    iget-object v9, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v7, "GPSTimeStamp"

    iget-object v8, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    iget-object v9, p2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0           #altitude:D
    .end local v3           #latitude:D
    .end local v5           #longitude:D
    :cond_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 252
    return-void

    .line 243
    .restart local v0       #altitude:D
    .restart local v3       #latitude:D
    .restart local v5       #longitude:D
    :cond_2
    const-string v7, "S"

    goto :goto_0

    .line 244
    :cond_3
    const-string v7, "W"

    goto :goto_1
.end method

.method static createMosaic(Z)Landroid/graphics/YuvImage;
    .locals 9
    .parameter "highRes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 150
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateFinalMosaic highRes:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v7

    .line 153
    .local v7, mosaicReturnCode:I
    const/4 v0, -0x2

    if-ne v7, v0, :cond_1

    .line 180
    :goto_0
    return-object v5

    .line 155
    :cond_1
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    .line 156
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to generate image"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v2, "Getting final Mosaic"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 162
    .local v1, imageData:[B
    if-nez v1, :cond_4

    .line 163
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v2, "getFinalMosaicNV21() returned null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to generate image"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4
    array-length v0, v1

    add-int/lit8 v6, v0, -0x8

    .line 168
    .local v6, len:I
    aget-byte v0, v1, v6

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v6, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    add-int/lit8 v2, v6, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v2, v6, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v3, v0, v2

    .line 170
    .local v3, width:I
    add-int/lit8 v0, v6, 0x4

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v6, 0x5

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    add-int/lit8 v2, v6, 0x6

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v2, v6, 0x7

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v4, v0, v2

    .line 172
    .local v4, height:I
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ImLength = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", W = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", H = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-lez v3, :cond_5

    if-gtz v4, :cond_6

    .line 175
    :cond_5
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width|height <= 0!!, len = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", W = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", H = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to generate image"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_6
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    move-object v5, v0

    goto/16 :goto_0
.end method

.method private generateFinalMosaic(ZLcom/motorola/camera/modes/panorama/ExifInfo;)Lcom/motorola/camera/modes/panorama/MosaicJpeg;
    .locals 4
    .parameter "highRes"
    .parameter "exif"

    .prologue
    .line 137
    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->createMosaic(Z)Landroid/graphics/YuvImage;

    move-result-object v1

    .line 138
    .local v1, image:Landroid/graphics/YuvImage;
    invoke-virtual {p0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    new-instance v2, Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    invoke-direct {v2}, Lcom/motorola/camera/modes/panorama/MosaicJpeg;-><init>()V

    .line 146
    .end local v1           #image:Landroid/graphics/YuvImage;
    :cond_0
    :goto_0
    return-object v2

    .line 140
    .restart local v1       #image:Landroid/graphics/YuvImage;
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->postProcessMosaic(Landroid/graphics/YuvImage;ZLcom/motorola/camera/modes/panorama/ExifInfo;)Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    move-result-object v2

    .line 141
    .local v2, jpeg:Lcom/motorola/camera/modes/panorama/MosaicJpeg;
    invoke-virtual {p0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    new-instance v2, Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    .end local v2           #jpeg:Lcom/motorola/camera/modes/panorama/MosaicJpeg;
    invoke-direct {v2}, Lcom/motorola/camera/modes/panorama/MosaicJpeg;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v1           #image:Landroid/graphics/YuvImage;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    invoke-direct {v2}, Lcom/motorola/camera/modes/panorama/MosaicJpeg;-><init>()V

    .restart local v2       #jpeg:Lcom/motorola/camera/modes/panorama/MosaicJpeg;
    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 255
    sparse-switch p0, :sswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 257
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 259
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private postProcessMosaic(Landroid/graphics/YuvImage;ZLcom/motorola/camera/modes/panorama/ExifInfo;)Lcom/motorola/camera/modes/panorama/MosaicJpeg;
    .locals 14
    .parameter "image"
    .parameter "highRes"
    .parameter "exif"

    .prologue
    .line 184
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v2, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 190
    .local v7, tmpFile:Ljava/io/File;
    if-eqz p2, :cond_1

    .line 191
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tmp_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v7           #tmpFile:Ljava/io/File;
    .local v8, tmpFile:Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .local v6, out:Ljava/io/OutputStream;
    move-object v7, v8

    .line 197
    .end local v8           #tmpFile:Ljava/io/File;
    .restart local v7       #tmpFile:Ljava/io/File;
    :goto_0
    :try_start_2
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v12

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 198
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 201
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 202
    sget-object v9, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v10, "Correcting EXIF data for orientation"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    if-eqz p2, :cond_3

    .line 204
    move-object/from16 v0, p3

    invoke-direct {p0, v7, v0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->correctExifInfo(Ljava/io/File;Lcom/motorola/camera/modes/panorama/ExifInfo;)V

    .line 206
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 207
    .local v5, fis:Ljava/io/FileInputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 209
    .local v1, b:[B
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, bytesRead:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    .line 210
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 217
    .end local v1           #b:[B
    .end local v3           #bytesRead:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 218
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    sget-object v9, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v10, "Exception in storing final mosaic"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    new-instance v9, Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    invoke-direct {v9}, Lcom/motorola/camera/modes/panorama/MosaicJpeg;-><init>()V

    .line 222
    .end local v4           #e:Ljava/lang/Exception;
    :goto_3
    return-object v9

    .line 195
    :cond_1
    move-object v6, v2

    .restart local v6       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 212
    .restart local v1       #b:[B
    .restart local v3       #bytesRead:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 213
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 216
    .end local v1           #b:[B
    .end local v3           #bytesRead:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    new-instance v9, Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/motorola/camera/modes/panorama/MosaicJpeg;-><init>([BII)V

    goto :goto_3

    .line 217
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v7           #tmpFile:Ljava/io/File;
    .restart local v8       #tmpFile:Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v7, v8

    .end local v8           #tmpFile:Ljava/io/File;
    .restart local v7       #tmpFile:Ljava/io/File;
    goto :goto_2
.end method


# virtual methods
.method public cancelProcessing()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v1, "SaveHiResMosaicTask cancelling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, v2}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->cancel(Z)Z

    .line 77
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mReportProgressTask:Lcom/motorola/camera/modes/panorama/ReportProgressTask;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->cancel(Z)Z

    .line 79
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/MosaicFrameProcessor;->reportProgress(ZZ)I

    .line 81
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/motorola/camera/modes/panorama/MosaicJpeg;
    .locals 8
    .parameter "voids"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 86
    const/4 v7, 0x0

    .line 88
    .local v7, jpeg:Lcom/motorola/camera/modes/panorama/MosaicJpeg;
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->generateFinalMosaic(ZLcom/motorola/camera/modes/panorama/ExifInfo;)Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    move-result-object v7

    .line 89
    invoke-virtual {p0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 104
    :goto_0
    return-object v7

    .line 91
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final Mosaic generated, saving -> storageLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    iget-object v2, v2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mStorageLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    iget-object v2, v2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    iget v2, v2, Lcom/motorola/camera/modes/panorama/ExifInfo;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    if-eqz v7, :cond_2

    iget-boolean v0, v7, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->isValid:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    iget-object v1, v7, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->data:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    iget-object v4, v4, Lcom/motorola/camera/modes/panorama/ExifInfo;->mStorageLocation:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    iget-object v5, v5, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mExifInfo:Lcom/motorola/camera/modes/panorama/ExifInfo;

    iget v6, v6, Lcom/motorola/camera/modes/panorama/ExifInfo;->mOrientation:I

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/saving/SaveHelper;->saveImage([BJLjava/lang/String;Landroid/location/Location;I)V

    .line 98
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v1, "Saved hires mosaic image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->doInBackground([Ljava/lang/Void;)Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/motorola/camera/modes/panorama/MosaicJpeg;)V
    .locals 2
    .parameter "mosaicJpeg"

    .prologue
    .line 128
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v1, "SaveHiResMosaicTask cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mReportProgressTask:Lcom/motorola/camera/modes/panorama/ReportProgressTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->cancel(Z)Z

    .line 130
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mListener:Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mListener:Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;

    invoke-interface {v0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;->onCancelled()V

    .line 132
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->onCancelled(Lcom/motorola/camera/modes/panorama/MosaicJpeg;)V

    return-void
.end method

.method protected onPostExecute(Lcom/motorola/camera/modes/panorama/MosaicJpeg;)V
    .locals 2
    .parameter "mosaicJpeg"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->isValid:Z

    if-nez v0, :cond_1

    .line 117
    :cond_0
    sget-object v0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->TAG:Ljava/lang/String;

    const-string v1, "Error creating hi res Mosaic image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-virtual {v0}, Lcom/motorola/camera/PanoramaManager;->savingError()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mReportProgressTask:Lcom/motorola/camera/modes/panorama/ReportProgressTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->cancel(Z)Z

    .line 121
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mListener:Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mListener:Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;

    invoke-interface {v0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;->onFinished()V

    .line 123
    :cond_2
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->startPreview()V

    .line 124
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/motorola/camera/modes/panorama/MosaicJpeg;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->onPostExecute(Lcom/motorola/camera/modes/panorama/MosaicJpeg;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;

    iget-object v1, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-direct {v0, v1}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;-><init>(Lcom/motorola/camera/PanoramaManager;)V

    iput-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mReportProgressTask:Lcom/motorola/camera/modes/panorama/ReportProgressTask;

    .line 110
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->mReportProgressTask:Lcom/motorola/camera/modes/panorama/ReportProgressTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->stopPreview()V

    .line 112
    return-void
.end method
