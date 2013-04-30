.class public final Lcom/vzw/location/VzwGpsStatus;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsStatus$Listener;,
        Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_AGPS_AUTH_DNS_FAIL:I = 0x6

.field public static final GPS_EVENT_AGPS_AUTH_EXPIRED:I = 0x5

.field public static final GPS_EVENT_AGPS_AUTH_FAIL:I = 0x3

.field public static final GPS_EVENT_AGPS_AUTH_PASS:I = 0x2

.field public static final GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE:I = 0x4

.field public static final GPS_EVENT_DEVICE_STATUS:I = 0x19

.field public static final GPS_EVENT_ESTABLISH_PDE_CONNECTION_FAILED:I = 0x1

.field public static final GPS_EVENT_FIRST_FIX:I = 0xa

.field public static final GPS_EVENT_FIX_REQUESTED:I = 0xc

.field public static final GPS_EVENT_FIX_REQ_FAIL:I = 0xb

.field public static final GPS_EVENT_GENERAL_AGPS_FAILURE:I = 0xd

.field public static final GPS_EVENT_GENERAL_FAILURE:I = 0xe

.field public static final GPS_EVENT_INIT_CONFIG_NOT_PROVIDED:I = 0xf

.field public static final GPS_EVENT_INIT_FAIL:I = 0x7

.field public static final GPS_EVENT_INIT_IN_PROGRESS:I = 0x65

.field public static final GPS_EVENT_INIT_PASS:I = 0x8

.field public static final GPS_EVENT_LOCATION_AVAILABLE:I = 0x9

.field public static final GPS_EVENT_LOCATION_REQUEST_TIMEDOUT:I = 0x10

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x11

.field public static final GPS_EVENT_SECURITY_FAILED:I = 0x12

.field public static final GPS_EVENT_SET_FIX_MODE_FAIL:I = 0x13

.field public static final GPS_EVENT_SET_FIX_RATE_FAIL:I = 0x14

.field public static final GPS_EVENT_SET_GPS_PERFORMANCE_FAIL:I = 0x15

.field public static final GPS_EVENT_SET_PDE_FAIL:I = 0x16

.field public static final GPS_EVENT_STARTED:I = 0x17

.field public static final GPS_EVENT_STOPPED:I = 0x18

.field public static final GPS_EVENT_TRACKING_SESSION_TIMEDOUT:I = 0x131

.field private static final MAX_VISIBLES:I = 0x30

.field public static final NUM_SATELLITES:I = 0xff

.field private static final TAG:Ljava/lang/String; = "VzwGpsStatus"


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v1, 0xff

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatellite;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    .line 62
    new-instance v1, Lcom/vzw/location/VzwGpsStatus$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsStatus$1;-><init>(Lcom/vzw/location/VzwGpsStatus;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    new-instance v2, Lcom/vzw/location/VzwGpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsStatus;)[Lcom/vzw/location/VzwGpsSatellite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    return-object v0
.end method


# virtual methods
.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 243
    const/16 v0, 0x30

    return v0
.end method

.method public getSatellitesInView()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[F[I)V
    .locals 5
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "usedInFixPrns"

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    if-eqz p6, :cond_1

    .line 175
    const/4 v0, 0x0

    :goto_1
    array-length v3, p6

    if-ge v0, v3, :cond_1

    .line 176
    aget v3, p6, v0

    add-int/lit8 v1, v3, -0x1

    .line 177
    .local v1, prn:I
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v1           #prn:I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_2

    .line 182
    aget v3, p2, v0

    add-int/lit8 v1, v3, -0x1

    .line 183
    .restart local v1       #prn:I
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v3, v1

    .line 185
    .local v2, satellite:Lcom/vzw/location/VzwGpsSatellite;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 186
    aget v3, p3, v0

    iput v3, v2, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 187
    aget v3, p4, v0

    iput v3, v2, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 188
    aget v3, p5, v0

    iput v3, v2, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 190
    .end local v1           #prn:I
    .end local v2           #satellite:Lcom/vzw/location/VzwGpsSatellite;
    :cond_2
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized setStatus(Lcom/vzw/location/VzwGpsStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsStatus;->getTimeToFirstFix()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .parameter "ttff"

    .prologue
    .line 208
    iput p1, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    .line 209
    return-void
.end method
