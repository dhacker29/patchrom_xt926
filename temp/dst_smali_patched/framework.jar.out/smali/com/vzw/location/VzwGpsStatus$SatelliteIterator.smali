.class final Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/vzw/location/VzwGpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

.field final synthetic this$0:Lcom/vzw/location/VzwGpsStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsStatus;[Lcom/vzw/location/VzwGpsSatellite;)V
    .locals 1
    .parameter
    .parameter "satellites"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->this$0:Lcom/vzw/location/VzwGpsStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    iput-object p2, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public next()Lcom/vzw/location/VzwGpsSatellite;
    .locals 4

    .prologue
    :cond_0
    iget v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    iget v2, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    aget-object v0, v1, v2

    .local v0, satellite:Lcom/vzw/location/VzwGpsSatellite;
    iget-boolean v1, v0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    return-object v0

    .end local v0           #satellite:Lcom/vzw/location/VzwGpsSatellite;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->next()Lcom/vzw/location/VzwGpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
