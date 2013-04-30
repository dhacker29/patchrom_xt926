.class public Lcom/motorola/camera/modes/TimeLapseMode;
.super Lcom/motorola/camera/modes/VideoMode;
.source "TimeLapseMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeLapseMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/motorola/camera/modes/VideoMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V
    .locals 11
    .parameter "ex"
    .parameter "dur"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 55
    const-wide/16 v0, 0x0

    .line 57
    .local v0, duration:J
    if-nez p1, :cond_0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/modes/VideoMode;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->getTimeBetweenTimeLapseCaptureMS()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/AppSettings;->getCurrentfps()I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/motorola/camera/Util;->getTimeLapseVideoLength(JDI)J

    move-result-wide v0

    .line 62
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/motorola/camera/AppSettings;->muteMicrophone(Z)V

    .line 64
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, file:Ljava/io/File;
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "TimeLapseMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 68
    iget-object v4, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    iget-object v4, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 72
    .local v3, intentOutput:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v3, v5}, Lcom/motorola/camera/saving/SaveHelper;->updateMediaStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 77
    .end local v3           #intentOutput:Landroid/net/Uri;
    :goto_0
    iput-object v10, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 78
    iput-object v10, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    .line 80
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v9, v9, v10}, Lcom/motorola/camera/modes/TimeLapseMode;->notifyClient(IIILjava/lang/Object;)V

    .line 81
    return-void

    .line 74
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
