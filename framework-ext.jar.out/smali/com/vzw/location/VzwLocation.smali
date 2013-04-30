.class public Lcom/vzw/location/VzwLocation;
.super Landroid/location/Location;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x80

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x40

.field public static final GPS_VALID_FIX_ERROR:I = 0x100000

.field public static final GPS_VALID_FIX_MODE:I = 0x80000

.field public static final GPS_VALID_HEADING:I = 0x10

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x200

.field public static final GPS_VALID_LATITUDE:I = 0x2

.field public static final GPS_VALID_LONGITUDE:I = 0x4

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x20

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x100

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x40000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x2000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x10000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x8000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x4000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x20000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x1000

.field public static final GPS_VALID_SATELLITE_COUNT:I = 0x800

.field public static final GPS_VALID_SPEED:I = 0x8

.field public static final GPS_VALID_UTC_TIME:I = 0x1

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x400


# instance fields
.field private mAltWrtEllipsoid:F

.field private mAltWrtSeaLevel:F

.field private mFixMode:I

.field private mHdop:F

.field private mHorConf:F

.field private mMagVariation:F

.field private mMajorAxis:F

.field private mMajorAxisAngle:F

.field private mMinorAxis:F

.field private mPdop:F

.field private mValidFields:I

.field private mVdop:F

.field private mVerticalError:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/vzw/location/VzwLocation$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwLocation$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 316
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 47
    iput v2, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 48
    iput v2, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 50
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 51
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 52
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 53
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 54
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 55
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 56
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 57
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 58
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 59
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwLocation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwLocation;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 47
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 48
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 50
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 51
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 52
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 53
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 54
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 55
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 56
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 57
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 58
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 59
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 71
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation;->set(Lcom/vzw/location/VzwLocation;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 47
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 48
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 49
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 50
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 51
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 52
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 53
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 54
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 55
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 56
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 57
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 58
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 59
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 67
    return-void
.end method

.method private getVzwHalLocationValidFields(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)I
    .locals 5
    .parameter "l"

    .prologue
    const/high16 v4, 0x1

    const v3, 0x8000

    .line 347
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getValidFieldMask()I

    move-result v0

    .line 348
    .local v0, VzwHalLocationFields:I
    const/4 v1, 0x0

    .line 350
    .local v1, fields:I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 351
    or-int/lit8 v1, v1, 0x2

    .line 353
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 354
    or-int/lit8 v1, v1, 0x4

    .line 356
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 357
    or-int/lit8 v1, v1, 0x40

    .line 359
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 360
    or-int/lit16 v1, v1, 0x100

    .line 362
    :cond_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    .line 363
    or-int/lit16 v1, v1, 0x200

    .line 365
    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    .line 366
    or-int/lit16 v1, v1, 0x400

    .line 368
    :cond_5
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    .line 371
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_6

    .line 374
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_6

    .line 377
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_6

    .line 378
    or-int/lit16 v1, v1, 0x1000

    .line 380
    :cond_6
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_7

    .line 381
    or-int/lit16 v1, v1, 0x4000

    .line 383
    :cond_7
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_8

    .line 384
    or-int/2addr v1, v3

    .line 386
    :cond_8
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_9

    .line 387
    or-int/2addr v1, v4

    .line 389
    :cond_9
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_a

    .line 390
    const/high16 v2, 0x2

    or-int/2addr v1, v2

    .line 392
    :cond_a
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_b

    .line 393
    const/high16 v2, 0x8

    or-int/2addr v1, v2

    .line 395
    :cond_b
    and-int v2, v0, v3

    if-eqz v2, :cond_c

    .line 396
    or-int/lit8 v1, v1, 0x20

    .line 398
    :cond_c
    and-int v2, v0, v4

    if-eqz v2, :cond_d

    .line 399
    or-int/lit8 v1, v1, 0x1

    .line 401
    :cond_d
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 402
    or-int/lit8 v1, v1, 0x8

    .line 404
    :cond_e
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 405
    or-int/lit8 v1, v1, 0x10

    .line 407
    :cond_f
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 408
    const/high16 v2, 0x4

    or-int/2addr v1, v2

    .line 410
    :cond_10
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    return v0
.end method

.method public getAltitudeWrtSeaLevel()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    return v0
.end method

.method public getHorizontalConfidence()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    return v0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    return v0
.end method

.method public getMajorAxis()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    return v0
.end method

.method public getMinorAxis()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    return v0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    return v0
.end method

.method public getVerticalError()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-super {p0}, Landroid/location/Location;->reset()V

    .line 116
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 117
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 118
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 119
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 120
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 121
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 122
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 123
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 124
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 125
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 126
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 127
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 128
    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 129
    return-void
.end method

.method public set(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 96
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/VzwLocation;->setTime(J)V

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocation;->getVzwHalLocationValidFields(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 100
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getFixMode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 101
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getHorizontalConfidence()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 102
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getVerticalAccuracy()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 103
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMajorAxis()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 104
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMajorAxisAngle()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 105
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMinorAxis()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 106
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getAltitudeWrtSeaLevel()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 107
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getHorizontalDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 108
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getPositionDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 109
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getVerticalDilutionOfPrecision()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 110
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMagneticVariation()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 111
    return-void
.end method

.method public set(Lcom/vzw/location/VzwLocation;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 79
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mValidFields:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 80
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 81
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 82
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 83
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 84
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 85
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 86
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 87
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 88
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mHdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 89
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mPdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 90
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mVdop:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 91
    iget v0, p1, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 92
    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 1
    .parameter "altWrtEllipsoid"

    .prologue
    .line 188
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    .line 189
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 190
    return-void
.end method

.method public setAltitudeWrtSeaLevel(F)V
    .locals 1
    .parameter "altWrtSeaLevel"

    .prologue
    .line 193
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    .line 194
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 195
    return-void
.end method

.method public setBearing(F)V
    .locals 1
    .parameter "bearing"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 158
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 159
    return-void
.end method

.method public setFixMode(I)V
    .locals 2
    .parameter "fixMode"

    .prologue
    .line 162
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 163
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 164
    return-void
.end method

.method public setHorizontalConfidence(F)V
    .locals 0
    .parameter "horConf"

    .prologue
    .line 167
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    .line 168
    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 1
    .parameter "hdop"

    .prologue
    .line 198
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    .line 199
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 200
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .parameter "latitude"

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 140
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 141
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .parameter "longitude"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 146
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 147
    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 1
    .parameter "magVariation"

    .prologue
    .line 213
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    .line 214
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 215
    return-void
.end method

.method public setMajorAxis(F)V
    .locals 2
    .parameter "majorAxis"

    .prologue
    .line 175
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 176
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 177
    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 0
    .parameter "majorAxisAngle"

    .prologue
    .line 180
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 181
    return-void
.end method

.method public setMinorAxis(F)V
    .locals 0
    .parameter "minorAxis"

    .prologue
    .line 184
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 185
    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 1
    .parameter "pdop"

    .prologue
    .line 203
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    .line 204
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 205
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 152
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 153
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    .line 134
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 135
    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 1
    .parameter "vdop"

    .prologue
    .line 208
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    .line 209
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 210
    return-void
.end method

.method public setVerticalError(F)V
    .locals 0
    .parameter "verError"

    .prologue
    .line 171
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VzwLocation[mValidFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFixMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHorConf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVerticalError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxisAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMinorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtEllipsoid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtSeaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMagVariation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 295
    const-string v0, "VzwLocation"

    const-string v1, "VzwLocation writeToParcel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 297
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorConf:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 300
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalError:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 303
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 304
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtEllipsoid:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 305
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltWrtSeaLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 306
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 307
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 308
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVdop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 309
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagVariation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 310
    return-void
.end method
