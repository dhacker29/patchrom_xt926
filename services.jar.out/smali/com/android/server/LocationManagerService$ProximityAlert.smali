.class Lcom/android/server/LocationManagerService$ProximityAlert;
.super Landroid/location/GeoFenceParams;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximityAlert"
.end annotation


# instance fields
.field final mLocation:Landroid/location/Location;

.field final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->this$0:Lcom/android/server/LocationManagerService;

    .line 1673
    const-wide/16 v1, -0x1

    cmp-long v1, p7, v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v7, p7, v1

    :goto_0
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Landroid/location/GeoFenceParams;-><init>(DDFJLandroid/app/PendingIntent;)V

    .line 1676
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mPackageName:Ljava/lang/String;

    .line 1678
    new-instance v1, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    .line 1679
    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1680
    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1681
    return-void

    :cond_0
    move-wide/from16 v7, p7

    .line 1673
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/GeoFenceParams;)V
    .locals 10
    .parameter
    .parameter "geofence"

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->this$0:Lcom/android/server/LocationManagerService;

    .line 1684
    iget v1, p2, Landroid/location/GeoFenceParams;->mUid:I

    iget-wide v2, p2, Landroid/location/GeoFenceParams;->mLatitude:D

    iget-wide v4, p2, Landroid/location/GeoFenceParams;->mLongitude:D

    iget v6, p2, Landroid/location/GeoFenceParams;->mRadius:F

    iget-wide v7, p2, Landroid/location/GeoFenceParams;->mExpiration:J

    iget-object v9, p2, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/location/GeoFenceParams;-><init>(IDDFJLandroid/app/PendingIntent;)V

    .line 1687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mPackageName:Ljava/lang/String;

    .line 1688
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    .line 1689
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    iget-wide v1, p2, Landroid/location/GeoFenceParams;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 1690
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    iget-wide v1, p2, Landroid/location/GeoFenceParams;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1691
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 1711
    invoke-super {p0, p1, p2}, Landroid/location/GeoFenceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method isInProximity(DDF)Z
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "accuracy"

    .prologue
    .line 1694
    new-instance v0, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1695
    .local v0, loc:Landroid/location/Location;
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 1696
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 1698
    iget-object v3, p0, Lcom/android/server/LocationManagerService$ProximityAlert;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-double v1, v3

    .line 1699
    .local v1, radius:D
    iget v3, p0, Landroid/location/GeoFenceParams;->mRadius:F

    invoke-static {v3, p5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProximityAlert{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$ProximityAlert;->getCallerUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
