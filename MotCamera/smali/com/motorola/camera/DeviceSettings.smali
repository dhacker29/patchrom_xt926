.class public Lcom/motorola/camera/DeviceSettings;
.super Ljava/lang/Object;
.source "DeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/DeviceSettings$2;,
        Lcom/motorola/camera/DeviceSettings$PreviewSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCameraDeviceSettings"


# instance fields
.field private mAspectRatio:F

.field private mDefaultPreviewSize:[I

.field private mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

.field private mMaxWideScreenRes:Landroid/hardware/Camera$Size;

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    .line 55
    iput-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mDefaultPreviewSize:[I

    .line 939
    return-void
.end method

.method private static getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 19
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 755
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v14

    invoke-virtual {v14}, Lcom/motorola/camera/AppSettings;->getRawSize()Landroid/graphics/Point;

    move-result-object v5

    .line 756
    .local v5, displaysize:Landroid/graphics/Point;
    iget v4, v5, Landroid/graphics/Point;->x:I

    .line 757
    .local v4, dispWidth:I
    iget v3, v5, Landroid/graphics/Point;->y:I

    .line 759
    .local v3, dispHeight:I
    sget-boolean v14, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "MotoCameraDeviceSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "target ratio"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "width height "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    const-wide v14, 0x3fa999999999999aL

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 763
    .local v2, ASPECT_TOLERANCE:Ljava/lang/Double;
    if-nez p0, :cond_2

    .line 764
    const/4 v9, 0x0

    .line 805
    :cond_1
    :goto_0
    return-object v9

    .line 767
    :cond_2
    const/4 v9, 0x0

    .line 768
    .local v9, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v7, 0x7fefffffffffffffL

    .line 770
    .local v7, minDiff:D
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 772
    .local v13, targetHeight:I
    if-gtz v13, :cond_3

    .line 773
    move v13, v3

    .line 777
    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 778
    .local v12, size:Landroid/hardware/Camera$Size;
    iget v14, v12, Landroid/hardware/Camera$Size;->width:I

    int-to-double v14, v14

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 779
    .local v10, ratio:D
    sget-boolean v14, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v14, :cond_5

    const-string v14, "MotoCameraDeviceSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ratio "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_5
    sub-double v14, v10, p1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_4

    .line 784
    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    cmpg-double v14, v14, v7

    if-gez v14, :cond_4

    .line 785
    move-object v9, v12

    .line 786
    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v7, v14

    goto :goto_1

    .line 793
    .end local v10           #ratio:D
    .end local v12           #size:Landroid/hardware/Camera$Size;
    :cond_6
    if-nez v9, :cond_9

    .line 794
    sget-boolean v14, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v14, :cond_7

    const-string v14, "MotoCameraDeviceSettings"

    const-string v15, "No preview size match the aspect ratio"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_7
    const-wide v7, 0x7fefffffffffffffL

    .line 797
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 798
    .restart local v12       #size:Landroid/hardware/Camera$Size;
    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    cmpg-double v14, v14, v7

    if-gez v14, :cond_8

    .line 799
    move-object v9, v12

    .line 800
    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v7, v14

    goto :goto_2

    .line 804
    .end local v12           #size:Landroid/hardware/Camera$Size;
    :cond_9
    sget-boolean v14, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "MotoCameraDeviceSettings"

    const-string v15, "Optimal preview size is %sx%s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getVideoPreviewSize(Lcom/motorola/camera/DeviceSettings$PreviewSize;)Lcom/motorola/camera/DeviceSettings$PreviewSize;
    .locals 12
    .parameter "captureResolution"

    .prologue
    .line 395
    iget-object v9, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    .line 396
    .local v8, supportedPreviews:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v9, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v9, :cond_0

    .line 397
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 398
    .local v6, size:Landroid/hardware/Camera$Size;
    const-string v9, "MotoCameraDeviceSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "supported preview size; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #size:Landroid/hardware/Camera$Size;
    :cond_0
    const/4 v5, 0x0

    .line 404
    .local v5, result:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 405
    .local v7, supportedPreview:Landroid/hardware/Camera$Size;
    new-instance v9, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    invoke-direct {v9, p0, v7}, Lcom/motorola/camera/DeviceSettings$PreviewSize;-><init>(Lcom/motorola/camera/DeviceSettings;Landroid/hardware/Camera$Size;)V

    invoke-virtual {p1, v9}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 407
    move-object v5, p1

    .line 411
    .end local v7           #supportedPreview:Landroid/hardware/Camera$Size;
    :cond_2
    if-nez v5, :cond_6

    .line 413
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 414
    .local v4, resolution:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 415
    new-instance v7, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    invoke-direct {v7, p0, v9}, Lcom/motorola/camera/DeviceSettings$PreviewSize;-><init>(Lcom/motorola/camera/DeviceSettings;Landroid/hardware/Camera$Size;)V

    .line 416
    .local v7, supportedPreview:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    invoke-virtual {p1}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->getSize()F

    move-result v9

    invoke-virtual {v7}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->getSize()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 417
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 422
    .end local v7           #supportedPreview:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    :cond_4
    new-instance v9, Lcom/motorola/camera/DeviceSettings$1;

    invoke-direct {v9, p0}, Lcom/motorola/camera/DeviceSettings$1;-><init>(Lcom/motorola/camera/DeviceSettings;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 431
    invoke-virtual {p1}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->getAspectRatio()F

    move-result v1

    .line 433
    .local v1, captureResolutionAR:F
    const/high16 v0, 0x42c8

    .line 434
    .local v0, bestARVariance:F
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 435
    .restart local v6       #size:Landroid/hardware/Camera$Size;
    new-instance v7, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    invoke-direct {v7, p0, v6}, Lcom/motorola/camera/DeviceSettings$PreviewSize;-><init>(Lcom/motorola/camera/DeviceSettings;Landroid/hardware/Camera$Size;)V

    .line 436
    .restart local v7       #supportedPreview:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    invoke-virtual {v7}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->getAspectRatio()F

    move-result v9

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 438
    .local v2, currentARVariance:F
    cmpg-float v9, v2, v0

    if-gtz v9, :cond_5

    .line 439
    move v0, v2

    .line 440
    move-object v5, v7

    goto :goto_2

    .line 444
    .end local v0           #bestARVariance:F
    .end local v1           #captureResolutionAR:F
    .end local v2           #currentARVariance:F
    .end local v4           #resolution:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v6           #size:Landroid/hardware/Camera$Size;
    .end local v7           #supportedPreview:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    :cond_6
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 445
    const-string v9, "MotoCameraDeviceSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selected video preview size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_7
    return-object v5
.end method

.method private hasValues(Ljava/lang/String;)Z
    .locals 3
    .parameter "param"

    .prologue
    const/4 v1, 0x0

    .line 452
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isBurstModeSupported()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 230
    iget-object v8, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "mot-burst-picture-count-values"

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, string:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/motorola/camera/DeviceSettings;->hasValues(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 232
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, values:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 235
    .local v5, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-le v8, v7, :cond_0

    .line 243
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :goto_1
    return v7

    .line 236
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #value:Ljava/lang/String;
    .restart local v6       #values:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-boolean v8, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 238
    const-string v8, "MotoCameraDeviceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "busrt mode param contains an invalid number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isHDRSupported()Z
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-hdr-mode-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, string:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/camera/DeviceSettings;->hasValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 275
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPanoramaModeSupported(I)Z
    .locals 1
    .parameter "facing"

    .prologue
    .line 300
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImageStabilization()V
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-image-stabilization-mode-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, string:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/camera/DeviceSettings;->hasValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-image-stabilization-mode"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_0
    return-void
.end method

.method private setupParameters()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mDefaultPreviewSize:[I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 686
    invoke-direct {p0}, Lcom/motorola/camera/DeviceSettings;->setupPictureSizeValues()V

    .line 687
    return-void
.end method

.method private setupPictureSizeValues()V
    .locals 21

    .prologue
    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v14

    .line 693
    .local v14, pictureSize:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 694
    .local v10, maxRes:Landroid/hardware/Camera$Size;
    if-nez v10, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v11, v0

    .line 697
    .local v11, maxResValue:J
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 698
    .local v16, s:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v17, v11

    if-lez v17, :cond_2

    .line 699
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v11, v0

    .line 700
    move-object/from16 v10, v16

    goto :goto_1

    .line 704
    .end local v16           #s:Landroid/hardware/Camera$Size;
    :cond_3
    sget-boolean v17, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v17, :cond_4

    const-string v17, "MotoCameraDeviceSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Max picture size"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_4
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/camera/AppSettings;->getRawSize()Landroid/graphics/Point;

    move-result-object v8

    .line 708
    .local v8, displaysize:Landroid/graphics/Point;
    iget v6, v8, Landroid/graphics/Point;->x:I

    .line 709
    .local v6, dispWidth:I
    iget v5, v8, Landroid/graphics/Point;->y:I

    .line 711
    .local v5, dispHeight:I
    const-wide v17, 0x3fa999999999999aL

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 713
    .local v2, ASPECT_TOLERANCE:Ljava/lang/Double;
    sget-boolean v17, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v17, :cond_5

    const-string v17, "MotoCameraDeviceSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Display width height "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_5
    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v15, v0

    .line 717
    .local v15, ratio:F
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 718
    .local v7, displayRatio:F
    sub-float v17, v15, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpg-double v17, v17, v19

    if-gtz v17, :cond_a

    .line 719
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    .line 724
    :goto_2
    sget-boolean v17, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v17, :cond_6

    const-string v17, "MotoCameraDeviceSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "max wide screen"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_6
    const-wide v3, 0x3ffc71c71c71c71cL

    .line 728
    .local v3, WS_ASPECT_RATIO:D
    const/4 v13, 0x0

    .line 729
    .local v13, maxWS:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 730
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 731
    .restart local v16       #s:Landroid/hardware/Camera$Size;
    sget-boolean v17, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v17, :cond_8

    .line 732
    const-string v17, "MotoCameraDeviceSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finding nonmax"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_8
    if-eqz v13, :cond_b

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 749
    .end local v16           #s:Landroid/hardware/Camera$Size;
    :cond_9
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    sget-boolean v17, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v17, :cond_0

    const-string v17, "MotoCameraDeviceSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "gettng max size"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 721
    .end local v3           #WS_ASPECT_RATIO:D
    .end local v13           #maxWS:Landroid/hardware/Camera$Size;
    :cond_a
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    goto/16 :goto_2

    .line 737
    .restart local v3       #WS_ASPECT_RATIO:D
    .restart local v13       #maxWS:Landroid/hardware/Camera$Size;
    .restart local v16       #s:Landroid/hardware/Camera$Size;
    :cond_b
    if-eqz v13, :cond_c

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 738
    :cond_c
    sget-boolean v17, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v17, :cond_d

    const-string v17, "MotoCameraDeviceSettings"

    const-string v18, "size matched"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_d
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v17, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpg-double v17, v17, v19

    if-gtz v17, :cond_7

    .line 740
    sget-boolean v17, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v17, :cond_e

    const-string v17, "MotoCameraDeviceSettings"

    const-string v18, "aspectRatio matched"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_e
    if-nez v13, :cond_f

    move-object/from16 v13, v16

    .line 743
    :cond_f
    move-object/from16 v13, v16

    goto/16 :goto_3
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 811
    .local v2, size:Landroid/hardware/Camera$Size;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 813
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method


# virtual methods
.method filterVideoSizes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, dimension:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    .line 818
    .local v6, videoSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v6, :cond_0

    .line 820
    iget-object v7, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 823
    :cond_0
    invoke-static {v6}, Lcom/motorola/camera/DeviceSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 825
    .local v5, sensorSupported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v0, finalSupport:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 827
    .local v3, s:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 828
    .local v4, sensor:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 829
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #sensor:Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public getBothResAvailable()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBurstCount()I
    .locals 5

    .prologue
    .line 478
    const/4 v1, 0x1

    .line 480
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "mot-burst-picture-count"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "MotoCameraDeviceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing burst count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExposureCompensation()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    return v0
.end method

.method public getFPSRange(I)[I
    .locals 11
    .parameter "fps"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 855
    iget-object v6, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 856
    .local v3, supportedFPSRange:Ljava/util/List;,"Ljava/util/List<[I>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v1, fpsRange:Ljava/util/List;,"Ljava/util/List<[I>;"
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mDefaultPreviewSize:[I

    .line 860
    .local v4, tempRange:[I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 861
    .local v5, x:[I
    aget v6, v5, v9

    if-ne v6, p1, :cond_1

    .line 862
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_1
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 865
    const-string v6, "MotoCameraDeviceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preview FPS range"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    .end local v5           #x:[I
    :cond_2
    const v0, 0x7fffffff

    .line 870
    .local v0, diff:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_4

    .line 871
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 872
    .restart local v5       #x:[I
    aget v6, v5, v9

    aget v7, v5, v10

    sub-int/2addr v6, v7

    if-ge v6, v0, :cond_3

    .line 873
    aget v6, v5, v9

    aget v7, v5, v10

    sub-int v0, v6, v7

    .line 874
    move-object v4, v5

    goto :goto_1

    .line 877
    .end local v5           #x:[I
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 878
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 879
    .restart local v5       #x:[I
    aget v6, v5, v9

    if-gt p1, v6, :cond_5

    aget v6, v5, v10

    if-lt p1, v6, :cond_5

    aget v6, v5, v9

    sub-int/2addr v6, p1

    if-ge v6, v0, :cond_5

    .line 880
    aget v6, v5, v9

    sub-int v0, p1, v6

    .line 881
    move-object v4, v5

    goto :goto_2

    .line 884
    .end local v5           #x:[I
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 885
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #tempRange:[I
    check-cast v4, [I

    .line 887
    .restart local v4       #tempRange:[I
    :cond_7
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 888
    const-string v6, "MotoCameraDeviceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preview FPS range"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_8
    return-object v4
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameRate()I
    .locals 5

    .prologue
    .line 910
    const/4 v1, -0x1

    .line 911
    .local v1, frameRate:I
    invoke-virtual {p0}, Lcom/motorola/camera/DeviceSettings;->isVideoHighFrameRateSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 912
    iget-object v3, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-hfr"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, rate:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 920
    .end local v2           #rate:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 915
    .restart local v2       #rate:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoCameraDeviceSettings"

    const-string v4, "video-hfr value is not an int: e"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMaxBurstModeSupported()I
    .locals 9

    .prologue
    .line 247
    iget-object v6, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "mot-burst-picture-count-values"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, burstModeValues:Ljava/lang/String;
    const/4 v2, 0x0

    .line 249
    .local v2, maxBurstModeSupported:I
    const/4 v5, 0x0

    .line 250
    .local v5, temp:I
    if-nez v0, :cond_0

    .line 251
    const-string v6, "MotoCameraDeviceSettings"

    const-string v7, "getParameter on mot-burst-picture-count-values returned null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 267
    .end local v2           #maxBurstModeSupported:I
    .local v3, maxBurstModeSupported:I
    :goto_0
    return v3

    .line 255
    .end local v3           #maxBurstModeSupported:I
    .restart local v2       #maxBurstModeSupported:I
    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v4, st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 259
    if-le v5, v2, :cond_1

    .line 260
    move v2, v5

    goto :goto_1

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "MotoCameraDeviceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value returned for burst count is invalid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "MotoCameraDeviceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxBurstModeSupported:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v2

    .line 267
    .end local v2           #maxBurstModeSupported:I
    .restart local v3       #maxBurstModeSupported:I
    goto :goto_0
.end method

.method public getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getMaxNonWideScreenRes()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public getMaxNumDetectedFaces()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    return v0
.end method

.method public getMaxNumFocusAreas()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    return v0
.end method

.method public getMaxNumMeteringAreas()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    return v0
.end method

.method public getMaxWideScreenRes()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getParameter()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getPictureSize()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewAspectRatio()F
    .locals 3

    .prologue
    .line 460
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDeviceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAspectRatio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/DeviceSettings;->mAspectRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/DeviceSettings;->mAspectRatio:F

    .line 462
    iget v0, p0, Lcom/motorola/camera/DeviceSettings;->mAspectRatio:F

    return v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCaptureModes(II)Ljava/util/List;
    .locals 2
    .parameter "cameraId"
    .parameter "facing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    const-string v1, "SINGLESHOT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v1, "TIMER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-direct {p0}, Lcom/motorola/camera/DeviceSettings;->isBurstModeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const-string v1, "MULTISHOT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    invoke-direct {p0, p2}, Lcom/motorola/camera/DeviceSettings;->isPanoramaModeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    const-string v1, "PANORAMA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/motorola/camera/DeviceSettings;->isHDRSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const-string v1, "HDR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_4
    const-string v1, "CAMCORDER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p0}, Lcom/motorola/camera/DeviceSettings;->isVideoHighFrameRateSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    const-string v1, "SLOW_MOTION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_5
    const-string v1, "TIMELAPSE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 3
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
    .line 494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    .line 496
    .local v0, s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 497
    :cond_0
    return-object v1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 3
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
    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 579
    .local v0, s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 580
    :cond_0
    return-object v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 3
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
    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 530
    .local v0, s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 533
    .end local v0           #s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public getSupportedPictureRes()Ljava/util/List;
    .locals 3
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
    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->MULTISHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-eq v1, v2, :cond_0

    .line 607
    const-string v1, "false"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_1

    const-string v1, "true"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_1
    return-object v0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 4
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
    .line 506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/motorola/camera/DeviceSettings$2;->$SwitchMap$com$motorola$camera$modes$AbstractMode$CAPTURE_MODE:[I

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 515
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 516
    .local v0, s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 518
    .end local v0           #s:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 509
    :pswitch_0
    const-string v2, "landscape"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :pswitch_1
    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSupportedVStab()Ljava/util/List;
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
    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v0, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "false"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {p0}, Lcom/motorola/camera/DeviceSettings;->isVStabSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_0
    return-object v0
.end method

.method public hasPreviewSizeChanged()Z
    .locals 8

    .prologue
    .line 655
    iget-object v3, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 657
    .local v2, s:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/motorola/camera/DeviceSettings;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 659
    .local v1, ps:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 661
    .local v0, currentPS:Landroid/hardware/Camera$Size;
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 662
    const/4 v3, 0x1

    .line 665
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasVideoProfileChange()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 669
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->getCurrentVideoResSize()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, size:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 672
    .local v0, currentPreview:Landroid/hardware/Camera$Size;
    const-string v6, "x"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, temp:[Ljava/lang/String;
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 675
    .local v4, width:I
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 677
    .local v1, height:I
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, v6, :cond_0

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v1, v6, :cond_1

    .line 678
    :cond_0
    const/4 v5, 0x1

    .line 681
    :cond_1
    return v5
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/DeviceSettings;->setupParameters()V

    .line 62
    return-void
.end method

.method public isEnvironmentalSupported()Z
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-env-event-mode-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, env_supported:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "mot-env-event-mode"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    .line 344
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVStabSupported()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoHighFrameRateSupported()Z
    .locals 8

    .prologue
    .line 279
    iget-object v6, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "video-hfr-values"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, string:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/motorola/camera/DeviceSettings;->hasValues(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, values:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 283
    .local v4, value:Ljava/lang/String;
    const-string v6, "off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    .line 286
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #value:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :goto_1
    return v6

    .line 282
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #value:Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #value:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public isVideoSnapshotSupported()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public removeLocation()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 183
    return-void
.end method

.method public setBurstMode(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mot-burst-picture-count"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 471
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 147
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDeviceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting color effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setEnvironmentalCallbacks()V
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/motorola/camera/DeviceSettings;->isEnvironmentalSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mot-env-event-mode"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mot-env-event-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 114
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 166
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDeviceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting flash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setHDR(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 924
    if-eqz p1, :cond_0

    .line 925
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mot-hdr-mode"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mot-hdr-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 5
    .parameter "location"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 174
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 175
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 176
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 179
    :cond_0
    return-void
.end method

.method public setPanoramaModeParameters()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->setupPanoramaParams(Landroid/hardware/Camera$Parameters;)V

    .line 330
    return-void
.end method

.method public setParameter(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 82
    return-void
.end method

.method public setPictureSize(Z)V
    .locals 3
    .parameter "widescreen"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/motorola/camera/DeviceSettings;->getBothResAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 623
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mMaxWideScreenRes:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mMaxNonWideScreenRes:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "MotoCameraDeviceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters does not support orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 156
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDeviceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setStillModeParameters()V
    .locals 5

    .prologue
    .line 308
    new-instance v1, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/DeviceSettings$PreviewSize;-><init>(Lcom/motorola/camera/DeviceSettings;Landroid/hardware/Camera$Size;)V

    .line 309
    .local v1, size:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    new-instance v0, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->getAspectRatio()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/DeviceSettings;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/DeviceSettings$PreviewSize;-><init>(Lcom/motorola/camera/DeviceSettings;Landroid/hardware/Camera$Size;)V

    .line 311
    .local v0, previewSize:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraDeviceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optimalPreviewSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, v0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    iget v4, v0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 314
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/DeviceSettings;->mAspectRatio:F

    .line 316
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "continuous-picture"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "continuous-picture"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/DeviceSettings;->setImageStabilization()V

    .line 322
    iget-object v2, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 323
    return-void
.end method

.method public setVStab(Z)V
    .locals 1
    .parameter "toggle"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 615
    return-void
.end method

.method public setVideoHighFrameRate(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 902
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/DeviceSettings;->isVideoHighFrameRateSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-hfr"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-hfr"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 364
    new-instance v3, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->getCurrentVideoResSize()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-direct {v3, p0, v4, v5}, Lcom/motorola/camera/DeviceSettings$PreviewSize;-><init>(Lcom/motorola/camera/DeviceSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v3, videoResolution:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCameraDeviceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    invoke-direct {p0, v3}, Lcom/motorola/camera/DeviceSettings;->getVideoPreviewSize(Lcom/motorola/camera/DeviceSettings$PreviewSize;)Lcom/motorola/camera/DeviceSettings$PreviewSize;

    move-result-object v2

    .line 369
    .local v2, size:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v5, v2, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    iget v6, v2, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 370
    invoke-virtual {v2}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->getAspectRatio()F

    move-result v4

    iput v4, p0, Lcom/motorola/camera/DeviceSettings;->mAspectRatio:F

    .line 372
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->getCurrentfps()I

    move-result v1

    .line 373
    .local v1, maxfps:I
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MotoCameraDeviceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    mul-int/lit16 v4, v1, 0x3e8

    invoke-virtual {p0, v4}, Lcom/motorola/camera/DeviceSettings;->getFPSRange(I)[I

    move-result-object v0

    .line 376
    .local v0, fpsRange:[I
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v5, 0x0

    aget v5, v0, v5

    aget v6, v0, v7

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 378
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    const-string v5, "continuous-video"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "continuous-video"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/DeviceSettings;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v4

    const-string v5, "auto"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 383
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 388
    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "video-res-size"

    invoke-virtual {v3}, Lcom/motorola/camera/DeviceSettings$PreviewSize;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 391
    return-void
.end method

.method public setVideoSize(Ljava/lang/String;)V
    .locals 5
    .parameter "resolutionDimension"

    .prologue
    .line 837
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 839
    .local v0, currentPreviewSize:Landroid/hardware/Camera$Size;
    const-string v4, "x"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, temp:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 842
    .local v3, width:I
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 844
    .local v1, height:I
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v1, v4, :cond_1

    .line 845
    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 847
    :cond_1
    return-void
.end method

.method public setZSL(Z)V
    .locals 3
    .parameter "lowlight"

    .prologue
    .line 894
    if-eqz p1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mode"

    const-string v2, "high-quality"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "mode"

    const-string v2, "high-quality-zsl"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/DeviceSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 140
    :cond_0
    return-void
.end method
