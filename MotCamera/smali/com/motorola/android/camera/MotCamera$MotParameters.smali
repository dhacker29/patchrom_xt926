.class public Lcom/motorola/android/camera/MotCamera$MotParameters;
.super Landroid/hardware/Camera$Parameters;
.source "MotCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/MotCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MotParameters"
.end annotation


# static fields
.field public static final CONSTRAST_LOWEST:Ljava/lang/String; = "lowest"

.field public static final CONTRAST_HIGH:Ljava/lang/String; = "high"

.field public static final CONTRAST_HIGHEST:Ljava/lang/String; = "highest"

.field public static final CONTRAST_LOW:Ljava/lang/String; = "low"

.field public static final CONTRAST_NORMAL:Ljava/lang/String; = "normal"

.field public static final FOCUS_MODE_CONTINUOUS:Ljava/lang/String; = "continuous"

.field public static final ISO_100:Ljava/lang/String; = "100"

.field public static final ISO_1600:Ljava/lang/String; = "1600"

.field public static final ISO_200:Ljava/lang/String; = "200"

.field public static final ISO_400:Ljava/lang/String; = "400"

.field public static final ISO_800:Ljava/lang/String; = "800"

.field public static final ISO_AUTO:Ljava/lang/String; = "auto"

.field private static final KEY_AREAS_TO_FOCUS:Ljava/lang/String; = "mot-areas-to-focus"

.field private static final KEY_BURST_COUNT:Ljava/lang/String; = "mot-burst-picture-count"

.field private static final KEY_CAPTURE_MODE_HINT:Ljava/lang/String; = "mot-capture-mode-hint"

.field private static final KEY_CONTRAST:Ljava/lang/String; = "mot-contrast"

.field private static final KEY_FACE_DETECT_AREAS:Ljava/lang/String; = "mot-face-detect-areas"

.field private static final KEY_FACE_TRACK_MAX_NUM_FACES:Ljava/lang/String; = "mot-max-face-detect-num-faces"

.field private static final KEY_FACE_TRACK_MODE:Ljava/lang/String; = "mot-face-detect-mode"

.field private static final KEY_FACE_TRACK_NUM_FACES:Ljava/lang/String; = "mot-face-detect-num-faces"

.field private static final KEY_MAX_AREAS_TO_FOCUS:Ljava/lang/String; = "mot-max-areas-to-focus"

.field private static final KEY_MAX_BURST_SIZE:Ljava/lang/String; = "mot-max-burst-size"

.field private static final KEY_PICTURE_ISO:Ljava/lang/String; = "mot-picture-iso"

.field private static final KEY_USER_COMMENT:Ljava/lang/String; = "mot-user-comment"

.field public static final MODE_OFF:Ljava/lang/String; = "off"

.field public static final MODE_ON:Ljava/lang/String; = "on"

.field public static final STILL_MODE:Ljava/lang/String; = "still-mode"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field public static final VIDEO_MODE:Ljava/lang/String; = "video-mode"


# instance fields
.field final synthetic this$0:Lcom/motorola/android/camera/MotCamera;


# direct methods
.method protected constructor <init>(Lcom/motorola/android/camera/MotCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/motorola/android/camera/MotCamera$MotParameters;->this$0:Lcom/motorola/android/camera/MotCamera;

    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Z)V

    .line 185
    return-void
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 460
    .end local p2
    :goto_0
    return p2

    .line 459
    .restart local p2
    :catch_0
    move-exception v0

    .line 460
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 437
    :cond_0
    return-object v0

    .line 432
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 443
    if-nez p1, :cond_1

    move-object v0, v3

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 445
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 448
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 451
    .end local v1           #token:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_0
.end method

.method private strToRegions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/camera/MotCamera$Region;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 483
    if-nez p1, :cond_1

    move-object v7, v11

    .line 508
    :cond_0
    :goto_0
    return-object v7

    .line 485
    :cond_1
    const/4 v6, 0x0

    .line 486
    .local v6, i:I
    const/4 v8, 0x0

    .local v8, regions:I
    const/4 v2, 0x0

    .local v2, left:I
    const/4 v3, 0x0

    .local v3, top:I
    const/4 v4, 0x0

    .local v4, width:I
    const/4 v5, 0x0

    .line 487
    .local v5, height:I
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v9, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .local v9, tokenizer:Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v7, regionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/camera/MotCamera$Region;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 491
    .local v10, value:I
    packed-switch v6, :pswitch_data_0

    .line 498
    new-instance v0, Lcom/motorola/android/camera/MotCamera$Region;

    iget-object v1, p0, Lcom/motorola/android/camera/MotCamera$MotParameters;->this$0:Lcom/motorola/android/camera/MotCamera;

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/camera/MotCamera$Region;-><init>(Lcom/motorola/android/camera/MotCamera;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    const/4 v6, 0x0

    .line 502
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 503
    goto :goto_1

    .line 492
    :pswitch_0
    move v8, v10

    goto :goto_2

    .line 493
    :pswitch_1
    move v2, v10

    goto :goto_2

    .line 494
    :pswitch_2
    move v3, v10

    goto :goto_2

    .line 495
    :pswitch_3
    move v4, v10

    goto :goto_2

    .line 496
    :pswitch_4
    move v5, v10

    goto :goto_2

    .line 504
    .end local v10           #value:I
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 505
    const-string v0, "MotCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mismatch in region count with "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v11

    .line 506
    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 467
    if-nez p1, :cond_0

    .line 477
    :goto_0
    return-object v3

    .line 469
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 470
    .local v1, pos:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 471
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, width:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, height:Ljava/lang/String;
    new-instance v3, Landroid/hardware/Camera$Size;

    iget-object v4, p0, Lcom/motorola/android/camera/MotCamera$MotParameters;->this$0:Lcom/motorola/android/camera/MotCamera;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    goto :goto_0

    .line 476
    .end local v0           #height:Ljava/lang/String;
    .end local v2           #width:Ljava/lang/String;
    :cond_1
    const-string v4, "MotCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAreasToFocus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/camera/MotCamera$Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    const-string v1, "mot-areas-to-focus"

    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->strToRegions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getBurstCount()I
    .locals 1

    .prologue
    .line 279
    const-string v0, "mot-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContrastMot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "mot-contrast"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetectedFaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/camera/MotCamera$Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    const-string v1, "mot-face-detect-areas"

    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->strToRegions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getFaceTrackMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string v0, "mot-face-detect-mode"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBurstSize()Landroid/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 309
    const-string v1, "mot-max-burst-size"

    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getMaxFacesTracked()I
    .locals 2

    .prologue
    .line 410
    const-string v0, "mot-max-face-detect-num-faces"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxFocusAreas()I
    .locals 2

    .prologue
    .line 347
    const-string v0, "mot-max-areas-to-focus"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPictureISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "mot-picture-iso"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedBurstCounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    const-string v1, "mot-burst-picture-count-values"

    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedContrastsMot()Ljava/util/List;
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
    .line 260
    const-string v1, "mot-contrast-values"

    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFaceTrackModes()Ljava/util/List;
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
    .line 377
    const-string v1, "mot-face-detect-mode-values"

    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedISOSettings()Ljava/util/List;
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
    .line 220
    const-string v1, "mot-picture-iso-values"

    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/MotCamera$MotParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public setAreasToFocus(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/camera/MotCamera$Region;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, focus_areas:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/camera/MotCamera$Region;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 334
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/camera/MotCamera$Region;

    invoke-virtual {v2}, Lcom/motorola/android/camera/MotCamera$Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const-string v2, "mot-areas-to-focus"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setBurstCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 289
    const-string v0, "mot-burst-picture-count"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;I)V

    .line 290
    return-void
.end method

.method public setCaptureModeHint(Ljava/lang/String;)V
    .locals 1
    .parameter "mode_hint"

    .prologue
    .line 423
    const-string v0, "mot-capture-mode-hint"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public setContrastMot(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 248
    const-string v0, "mot-contrast"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setFaceTrack(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 366
    const-string v0, "mot-face-detect-mode"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public setNumFacesTracked(I)V
    .locals 1
    .parameter "num_faces"

    .prologue
    .line 400
    const-string v0, "mot-face-detect-num-faces"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;I)V

    .line 401
    return-void
.end method

.method public setPictureISO(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 209
    const-string v0, "mot-picture-iso"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setUserComment(Ljava/lang/String;)V
    .locals 1
    .parameter "user_comment"

    .prologue
    .line 270
    const-string v0, "mot-user-comment"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/MotCamera$MotParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method
