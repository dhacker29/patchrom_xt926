.class public Lcom/qualcomm/location/vzw_library/imp/NativeMethods;
.super Ljava/lang/Object;
.source "NativeMethods.java"

# interfaces
.implements Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/vzw_library/imp/NativeMethods$1;,
        Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;
    }
.end annotation


# static fields
.field private static final ALMANAC_MASK:I = 0x1

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_SV_STATUS_VALID_ALM_MASK:I = 0x4

.field private static final GPS_SV_STATUS_VALID_EPH_MASK:I = 0x2

.field private static final GPS_SV_STATUS_VALID_HDOP:I = 0x20

.field private static final GPS_SV_STATUS_VALID_PDOP:I = 0x10

.field private static final GPS_SV_STATUS_VALID_SV_LIST:I = 0x1

.field private static final GPS_SV_STATUS_VALID_USE_MASK:I = 0x8

.field private static final GPS_SV_STATUS_VALID_VDOP:I = 0x40

.field private static final INDEX_HDOP:I = 0x1

.field private static final INDEX_PDOP:I = 0x0

.field private static final INDEX_SV_VALID_MASK:I = 0x0

.field private static final INDEX_VDOP:I = 0x2

.field private static final MAX_AGE_SV_REPORT_MSEC:J = 0xbb8L

.field private static final MAX_SVS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "VzwHal.Native"

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VZW_GPS_LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final VZW_GPS_LOCATION_HAS_ALTITUDE_SEA_LEVEL:I = 0x100

.field private static final VZW_GPS_LOCATION_HAS_BEARING:I = 0x8

.field private static final VZW_GPS_LOCATION_HAS_CIRC_ACCURACY:I = 0x10

.field private static final VZW_GPS_LOCATION_HAS_CONFIDENCE:I = 0x800

.field private static final VZW_GPS_LOCATION_HAS_ELLI_ACCURACY:I = 0x200

.field private static final VZW_GPS_LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final VZW_GPS_LOCATION_HAS_MAGNETIC_VARIATION:I = 0x2000

.field private static final VZW_GPS_LOCATION_HAS_SPEED:I = 0x4

.field private static final VZW_GPS_LOCATION_HAS_TIMESTAMP:I = 0x1000

.field private static final VZW_GPS_LOCATION_HAS_VERT_ACCURACY:I = 0x400

.field private static mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;


# instance fields
.field private DEBUG:Z

.field private VERBOSE:Z

.field private lastRequestedFixMode:I

.field private mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

.field private mCurrentSessionId:I

.field private mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

.field private mSessionIdIsValid:Z

.field private mSnrs:[F

.field private mSvAzimuths:[F

.field private mSvDops:[F

.field private mSvElevations:[F

.field private mSvFlags:[I

.field private mSvInViewAzimuthTrimed:[F

.field private mSvInViewElevationTrimed:[F

.field private mSvInViewSnrTrimed:[F

.field private mSvInViewTrimed:[I

.field private mSvMasks:[I

.field private mSvs:[I

.field timeLastSvReport:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "VzwHal.Native"

    const-string v1, "loading native library"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "loc_ext"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    const-string v0, "VzwHal.Native"

    const-string v1, "jni class init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->class_init_native()V

    .line 108
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/16 v1, 0x20

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->DEBUG:Z

    .line 32
    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    .line 57
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    .line 58
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    .line 59
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    .line 60
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 72
    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 114
    const-string v0, "VzwHal.Native"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->DEBUG:Z

    .line 115
    const-string v0, "VzwHal.Native"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_wait_for_event()V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private copyArrayPartial([FI)[F
    .locals 3
    .parameter "array"
    .parameter "length"

    .prologue
    .line 506
    new-array v1, p2, [F

    .line 507
    .local v1, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 509
    aget v2, p1, v0

    aput v2, v1, v0

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_0
    return-object v1
.end method

.method private copyArrayPartial([II)[I
    .locals 3
    .parameter "array"
    .parameter "length"

    .prologue
    .line 496
    new-array v1, p2, [I

    .line 497
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 499
    aget v2, p1, v0

    aput v2, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-object v1
.end method

.method private countNumFirstNonZeroPrn([I)I
    .locals 2
    .parameter "svs"

    .prologue
    .line 484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 486
    aget v1, p1, v0

    if-nez v1, :cond_0

    .line 491
    .end local v0           #i:I
    :goto_1
    return v0

    .line 484
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    array-length v0, p1

    goto :goto_1
.end method

.method private fixCriteria(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)Z
    .locals 1
    .parameter "criteria"

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    invoke-direct {v0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;-><init>()V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    .line 131
    :cond_0
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    return-object v0
.end method

.method private getNumOfSvs(I)I
    .locals 4
    .parameter "mask"

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 455
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 457
    add-int/lit8 v0, v0, 0x1

    .line 461
    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    :cond_1
    return v0
.end method

.method private getPrnArray(I)[I
    .locals 5
    .parameter "mask"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getNumOfSvs(I)I

    move-result v3

    new-array v0, v3, [I

    .line 468
    .local v0, array:[I
    const/4 v1, 0x0

    .line 469
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, prn:I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 471
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 473
    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 478
    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_1
    return-object v0
.end method

.method private native native_cleanup()V
.end method

.method private native native_disable()V
.end method

.method private native native_init()Z
.end method

.method private native native_read_sv_status([I[I[F[F[F[I[F)I
.end method

.method private native native_reset_gps(I)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_start(IZIILjava/lang/String;)Z
.end method

.method private native native_stop()Z
.end method

.method private native native_wait_for_event()V
.end method

.method private reportLocation(IDDDDFFFFFFFFFJ)V
    .locals 10
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "altitude_sea_level"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy_hor_circular"
    .parameter "accuracy_hor_ellipse_semi_major"
    .parameter "accuracy_hor_ellipse_semi_minor"
    .parameter "accuracy_hor_ellipse_angle"
    .parameter "accuracy_vertical"
    .parameter "confidence_horizontal"
    .parameter "magnetic_variation"
    .parameter "timestamp"

    .prologue
    .line 283
    iget-boolean v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v6, :cond_0

    const-string v6, "VzwHal.Native"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportLocation-lat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lon: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "alt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "accuracy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    new-instance v2, Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-direct {v2}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;-><init>()V

    .line 287
    .local v2, location:Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    invoke-direct {p0, v2}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->setSessionIdIfValid(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 289
    const/4 v3, 0x0

    .line 290
    .local v3, mask:I
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    .line 292
    invoke-virtual {v2, p2, p3}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setLatitude(D)V

    .line 293
    invoke-virtual {v2, p4, p5}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setLongitude(D)V

    .line 294
    or-int/lit8 v3, v3, 0x3

    .line 297
    :cond_1
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_2

    .line 300
    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setAltitude(D)V

    .line 303
    :cond_2
    and-int/lit16 v6, p1, 0x400

    if-eqz v6, :cond_3

    .line 305
    move/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setVerticalAccuracy(F)V

    .line 306
    or-int/lit16 v3, v3, 0x80

    .line 309
    :cond_3
    and-int/lit16 v6, p1, 0x100

    if-eqz v6, :cond_4

    .line 311
    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setAltitudeWrtSeaLevel(D)V

    .line 312
    or-int/lit8 v3, v3, 0x4

    .line 315
    :cond_4
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_5

    .line 318
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSpeed(F)V

    .line 321
    :cond_5
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_6

    .line 324
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setBearing(F)V

    .line 327
    :cond_6
    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_7

    .line 330
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setAccuracy(F)V

    .line 333
    :cond_7
    and-int/lit16 v6, p1, 0x200

    if-eqz v6, :cond_8

    .line 335
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMajorAxis(F)V

    .line 336
    move/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMajorAxisAngle(F)V

    .line 337
    move/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMinorAxis(F)V

    .line 339
    or-int/lit8 v3, v3, 0x40

    .line 342
    :cond_8
    and-int/lit16 v6, p1, 0x800

    if-eqz v6, :cond_9

    .line 344
    move/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setHorizontalConfidence(F)V

    .line 346
    or-int/lit16 v3, v3, 0x100

    .line 349
    :cond_9
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_a

    .line 352
    move-wide/from16 v0, p19

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setTime(J)V

    .line 356
    const/high16 v6, 0x1

    or-int/2addr v3, v6

    .line 359
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->timeLastSvReport:J

    sub-long v4, v6, v8

    .line 360
    .local v4, time_delta:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_16

    const-wide/16 v6, 0xbb8

    cmp-long v6, v4, v6

    if-gtz v6, :cond_16

    .line 367
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_b

    .line 369
    or-int/lit8 v3, v3, 0x8

    .line 370
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setPositionDilutionOfPrecision(F)V

    .line 373
    :cond_b
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_c

    .line 375
    or-int/lit8 v3, v3, 0x10

    .line 376
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setHorizontalDilutionOfPrecision(F)V

    .line 379
    :cond_c
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_d

    .line 381
    or-int/lit8 v3, v3, 0x20

    .line 382
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setVerticalDilutionOfPrecision(F)V

    .line 385
    :cond_d
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_e

    .line 387
    or-int/lit16 v3, v3, 0x200

    .line 388
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-direct {p0, v6}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getPrnArray(I)[I

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesUsedPRN([I)V

    .line 391
    :cond_e
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    if-eqz v6, :cond_f

    .line 392
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewPRNs([I)V

    .line 393
    or-int/lit16 v3, v3, 0x400

    .line 395
    :cond_f
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    if-eqz v6, :cond_10

    .line 396
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewAzimuth([F)V

    .line 397
    or-int/lit16 v3, v3, 0x1000

    .line 399
    :cond_10
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    if-eqz v6, :cond_11

    .line 400
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewElevation([F)V

    .line 401
    or-int/lit16 v3, v3, 0x800

    .line 403
    :cond_11
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    if-eqz v6, :cond_12

    .line 404
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewSignalToNoiseRatio([F)V

    .line 405
    or-int/lit16 v3, v3, 0x2000

    .line 414
    :cond_12
    :goto_0
    iget v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    if-ltz v6, :cond_13

    .line 415
    iget v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setFixMode(I)V

    .line 416
    or-int/lit16 v3, v3, 0x4000

    .line 419
    :cond_13
    and-int/lit16 v6, p1, 0x2000

    if-eqz v6, :cond_14

    .line 421
    move/from16 v0, p18

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMagneticVariation(F)V

    .line 422
    const v6, 0x8000

    or-int/2addr v3, v6

    .line 425
    :cond_14
    invoke-virtual {v2, v3}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setValidFieldMask(I)V

    .line 432
    .end local v3           #mask:I
    .end local v4           #time_delta:J
    :goto_1
    if-eqz v2, :cond_15

    .line 434
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v6, v2}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V

    .line 436
    :cond_15
    return-void

    .line 410
    .restart local v3       #mask:I
    .restart local v4       #time_delta:J
    :cond_16
    const-string v6, "VzwHal.Native"

    const-string v7, "no fresh SV report to populate SV info in location report"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    .end local v3           #mask:I
    .end local v4           #time_delta:J
    :cond_17
    const-string v6, "VzwHal.Native"

    const-string v7, "no active session. drop fix report"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private reportStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHal.Native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportStatus-status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportEngineStatus(I)V

    .line 442
    return-void
.end method

.method private reportSvStatus()V
    .locals 17

    .prologue
    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->timeLastSvReport:J

    .line 524
    new-instance v14, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;

    invoke-direct {v14}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;-><init>()V

    .line 528
    .local v14, svInfo:Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    array-length v1, v1

    if-ge v9, v1, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v2, 0x0

    aput v2, v1, v9

    .line 528
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 531
    :cond_0
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    const/4 v2, 0x0

    aput v2, v1, v9

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    const/4 v2, 0x0

    aput v2, v1, v9

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    const/4 v2, 0x0

    aput v2, v1, v9

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    const/4 v2, 0x0

    aput v2, v1, v9

    .line 531
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 537
    :cond_1
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    array-length v1, v1

    if-ge v9, v1, :cond_2

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v2, 0x0

    aput v2, v1, v9

    .line 537
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 540
    :cond_2
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    array-length v1, v1

    if-ge v9, v1, :cond_3

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v2, 0x0

    aput v2, v1, v9

    .line 540
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 544
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_read_sv_status([I[I[F[F[F[I[F)I

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v2, 0x0

    aget v12, v1, v2

    .line 547
    .local v12, mask_sv_with_ephemris:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v2, 0x1

    aget v11, v1, v2

    .line 550
    .local v11, mask_sv_with_almanac:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getPrnArray(I)[I

    move-result-object v16

    .line 551
    .local v16, svs_with_ephemeris:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getPrnArray(I)[I

    move-result-object v15

    .line 554
    .local v15, svs_with_almanac:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->countNumFirstNonZeroPrn([I)I

    move-result v13

    .line 555
    .local v13, numSvInView:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([II)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([FI)[F

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([FI)[F

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([FI)[F

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    array-length v1, v1

    invoke-virtual {v14, v1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setNumSatellitesInView(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    invoke-virtual {v14, v1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewAzimuth([F)V

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    invoke-virtual {v14, v1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewElevation([F)V

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    invoke-virtual {v14, v1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewPRNs([I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    invoke-virtual {v14, v1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewSignalToNoiseRatio([F)V

    .line 565
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesWithEphemeris([I)V

    .line 566
    invoke-virtual {v14, v15}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesWithAlmanac([I)V

    .line 568
    const/16 v10, 0x7f

    .line 576
    .local v10, mask:I
    invoke-virtual {v14, v10}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setValidFieldMask(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v1, v14}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportSvStatus(Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;)V

    .line 579
    return-void
.end method

.method private reportVzwEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHal.Native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportVzwEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportGpsStatus(I)V

    .line 449
    return-void
.end method

.method private declared-synchronized setSessionIdIfValid(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCurrentSessionId:I

    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSessionId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const/4 v0, 0x1

    .line 246
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    if-eqz v0, :cond_1

    .line 142
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHal.Native"

    const-string v1, "killing event thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->fgTerminate:Z

    .line 144
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->interrupt()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    .line 148
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 150
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_disable()V

    .line 151
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_cleanup()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->cleanup()V

    .line 136
    return-void
.end method

.method public declared-synchronized init()Z
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string v2, "VzwHal.Native"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    new-instance v2, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;-><init>(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;Lcom/qualcomm/location/vzw_library/imp/NativeMethods$1;)V

    iput-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    .line 161
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    invoke-virtual {v2}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->start()V

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 164
    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 166
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string v2, "VzwHal.Native"

    const-string v3, "native init"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    const/4 v1, 0x0

    .line 170
    .local v1, result:Z
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_init()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 177
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string v2, "VzwHal.Native"

    const-string v3, "native init done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :cond_2
    monitor-exit p0

    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetGps(I)V
    .locals 1
    .parameter "bits"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_reset_gps(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_agps_server(ILjava/lang/String;I)V
    .locals 1
    .parameter "type"
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_set_agps_server(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;ILjava/lang/String;)Z
    .locals 7
    .parameter "criteria"
    .parameter "sessionId"
    .parameter "credentials"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->fixCriteria(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 196
    iput p2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCurrentSessionId:I

    .line 198
    const/4 v6, 0x0

    .line 200
    .local v6, result:Z
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getHintNextFixArriveInSec()I

    move-result v3

    .line 201
    .local v3, time_to_next_fix_sec:I
    if-gez v3, :cond_0

    .line 205
    const/4 v3, 0x1

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 210
    iget v1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getMaximumResponseTime()I

    move-result v4

    const/4 v0, 0x2

    iget v5, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    if-ne v0, v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_start(IZIILjava/lang/String;)Z

    move-result v6

    .line 217
    if-nez v6, :cond_1

    .line 219
    const-string v0, "VzwHal.Native"

    const-string v1, "cannot start the location engine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v3           #time_to_next_fix_sec:I
    .end local v6           #result:Z
    :cond_1
    :goto_1
    monitor-exit p0

    return v6

    .restart local v3       #time_to_next_fix_sec:I
    .restart local v6       #result:Z
    :cond_2
    move-object v5, p3

    .line 210
    goto :goto_0

    .line 226
    .end local v3           #time_to_next_fix_sec:I
    .end local v6           #result:Z
    :cond_3
    :try_start_1
    const-string v0, "VzwHal.Native"

    const-string v1, "criteria is foobar"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    const/4 v6, 0x0

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 234
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
