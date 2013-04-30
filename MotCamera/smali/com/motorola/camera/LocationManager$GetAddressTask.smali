.class Lcom/motorola/camera/LocationManager$GetAddressTask;
.super Landroid/os/AsyncTask;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAddressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/location/Location;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/motorola/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/LocationManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/motorola/camera/LocationManager$GetAddressTask;->this$0:Lcom/motorola/camera/LocationManager;

    .line 283
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/motorola/camera/LocationManager$GetAddressTask;->mContext:Landroid/content/Context;

    .line 285
    return-void
.end method

.method private locationToString(Landroid/location/Location;)Ljava/lang/String;
    .locals 4
    .parameter "loc"

    .prologue
    .line 359
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, df:Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, [Landroid/location/Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/LocationManager$GetAddressTask;->doInBackground([Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/location/Location;)Ljava/lang/String;
    .locals 14
    .parameter "params"

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, geocoder:Landroid/location/Geocoder;
    const/4 v1, 0x0

    aget-object v13, p1, v1

    .line 291
    .local v13, loc:Landroid/location/Location;
    const/4 v8, 0x0

    .line 292
    .local v8, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v7, 0x0

    .line 294
    .local v7, addressText:Ljava/lang/String;
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :try_start_0
    new-instance v10, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/motorola/camera/LocationManager$GetAddressTask;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #geocoder:Landroid/location/Geocoder;
    .local v10, geocoder:Landroid/location/Geocoder;
    move-object v0, v10

    .line 308
    .end local v10           #geocoder:Landroid/location/Geocoder;
    .restart local v0       #geocoder:Landroid/location/Geocoder;
    :goto_0
    const/4 v11, 0x0

    .local v11, iteration:I
    move v12, v11

    .line 309
    .end local v11           #iteration:I
    .local v12, iteration:I
    :goto_1
    if-eqz v0, :cond_4

    if-nez v8, :cond_4

    add-int/lit8 v11, v12, 0x1

    .end local v12           #iteration:I
    .restart local v11       #iteration:I
    const/4 v1, 0x5

    if-ge v12, v1, :cond_5

    .line 311
    :try_start_1
    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 316
    :goto_2
    if-nez v8, :cond_a

    .line 318
    const-wide/16 v1, 0x1f4

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v12, v11

    .line 321
    .end local v11           #iteration:I
    .restart local v12       #iteration:I
    goto :goto_1

    .line 297
    .end local v12           #iteration:I
    :catch_0
    move-exception v9

    .line 298
    .local v9, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    :cond_0
    invoke-direct {p0, v13}, Lcom/motorola/camera/LocationManager$GetAddressTask;->locationToString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v7

    .line 301
    goto :goto_0

    .line 304
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "LocationManager"

    const-string v2, "geocoder not present on device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_2
    invoke-direct {p0, v13}, Lcom/motorola/camera/LocationManager$GetAddressTask;->locationToString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 312
    .restart local v11       #iteration:I
    :catch_1
    move-exception v9

    .line 313
    .local v9, e:Ljava/io/IOException;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LocationManager"

    const-string v2, "getAddressByLoc: IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 319
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    move v12, v11

    .line 321
    .end local v11           #iteration:I
    .restart local v12       #iteration:I
    goto :goto_1

    :cond_4
    move v11, v12

    .line 325
    .end local v12           #iteration:I
    .restart local v11       #iteration:I
    :cond_5
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 326
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 327
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 328
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v7

    .line 333
    :cond_6
    :goto_3
    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 334
    if-eqz v7, :cond_9

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 341
    .end local v6           #address:Landroid/location/Address;
    :cond_7
    :goto_4
    return-object v7

    .line 329
    .restart local v6       #address:Landroid/location/Address;
    :cond_8
    invoke-virtual {v6}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 330
    invoke-virtual {v6}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 337
    :cond_9
    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .end local v6           #address:Landroid/location/Address;
    :cond_a
    move v12, v11

    .end local v11           #iteration:I
    .restart local v12       #iteration:I
    goto/16 :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 355
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setLocationStatus(I)V

    .line 356
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/LocationManager$GetAddressTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 348
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/AppSettings;->setLocationAddress(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setLocationStatus(I)V

    .line 351
    :cond_0
    return-void
.end method
