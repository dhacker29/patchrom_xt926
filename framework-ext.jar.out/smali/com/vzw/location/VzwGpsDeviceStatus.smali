.class public final Lcom/vzw/location/VzwGpsDeviceStatus;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final HW_STATE_IDLE:I = 0x2

.field public static final HW_STATE_ON:I = 0x1

.field public static final HW_STATE_UNKNOWN:I = 0x0

.field private static final MAX_VISIBLES:I = 0x30

.field private static final NUM_SATELLITES:I = 0xff

.field public static final VALID_ALM_SV_MASK:I = 0x4

.field public static final VALID_DEV_ERROR:I = 0x20

.field public static final VALID_EPH_SV_MASK:I = 0x2

.field public static final VALID_HW_STATE:I = 0x1

.field public static final VALID_SAT_IN_VIEW_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final VALID_SAT_IN_VIEW_PRN:I = 0x8


# instance fields
.field private mHwState:I

.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field private mValidHwState:Z

.field private mValidSatInfo:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x2

    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidHwState:Z

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    .line 36
    const/16 v1, 0xff

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 71
    new-instance v1, Lcom/vzw/location/VzwGpsDeviceStatus$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsDeviceStatus$1;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    new-instance v2, Lcom/vzw/location/VzwGpsSatelliteStatus;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>(I)V

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method


# virtual methods
.method public getHwState()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    return v0
.end method

.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x30

    return v0
.end method

.method public getValidFields()I
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, valid:I
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidHwState:Z

    if-eqz v1, :cond_0

    .line 156
    or-int/lit8 v0, v0, 0x1

    .line 159
    :cond_0
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    if-eqz v1, :cond_1

    .line 160
    or-int/lit8 v0, v0, 0x2

    .line 161
    or-int/lit8 v0, v0, 0x4

    .line 162
    or-int/lit8 v0, v0, 0x8

    .line 163
    or-int/lit8 v0, v0, 0x10

    .line 166
    :cond_1
    return v0
.end method

.method public satellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method setHwState(I)V
    .locals 0
    .parameter "hwState"

    .prologue
    .line 85
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 86
    return-void
.end method

.method declared-synchronized setStatus(I[I[F[I[I)V
    .locals 5
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "hasEphemerisPrns"
    .parameter "hasAlmanacPrns"

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    if-eqz p4, :cond_1

    .line 103
    const/4 v0, 0x0

    :goto_1
    array-length v3, p4

    if-ge v0, v3, :cond_1

    .line 104
    aget v3, p4, v0

    add-int/lit8 v1, v3, -0x1

    .line 105
    .local v1, prn:I
    iget-object v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v1           #prn:I
    :cond_1
    if-eqz p5, :cond_2

    .line 110
    const/4 v0, 0x0

    :goto_2
    array-length v3, p5

    if-ge v0, v3, :cond_2

    .line 111
    aget v3, p5, v0

    add-int/lit8 v1, v3, -0x1

    .line 112
    .restart local v1       #prn:I
    iget-object v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    .end local v1           #prn:I
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_3

    .line 117
    aget v3, p2, v0

    add-int/lit8 v1, v3, -0x1

    .line 118
    .restart local v1       #prn:I
    iget-object v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v3, v1

    .line 120
    .local v2, satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 121
    aget v3, p3, v0

    iput v3, v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 124
    .end local v1           #prn:I
    .end local v2           #satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->getHwState()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 137
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->getValidFields()I

    move-result v1

    .line 138
    .local v1, valid:I
    and-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setStatus(Lcom/vzw/location/VzwGpsSatelliteStatus;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0           #i:I
    :cond_0
    return-void
.end method
