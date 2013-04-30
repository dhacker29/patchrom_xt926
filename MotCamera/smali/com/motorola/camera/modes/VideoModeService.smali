.class public Lcom/motorola/camera/modes/VideoModeService;
.super Lcom/motorola/camera/modes/VideoMode;
.source "VideoModeService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoModeService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/motorola/camera/modes/VideoMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_VIDEO:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V
    .locals 8
    .parameter "ex"
    .parameter "duration"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 52
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/AppSettings;->muteMicrophone(Z)V

    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, file:Ljava/io/File;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "VideoModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "output"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 62
    .local v1, intentOutput:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/saving/SaveHelper;->updateMediaStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mUri:Landroid/net/Uri;

    .line 67
    .end local v1           #intentOutput:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const/4 v2, 0x5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/motorola/camera/modes/AbstractMode;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2, v6, v3, v4}, Lcom/motorola/camera/modes/VideoModeService;->notifyClient(IIILjava/lang/Object;)V

    .line 72
    :goto_1
    iput-object v7, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 73
    iput-object v7, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    .line 74
    return-void

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 70
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v6, v6, v7}, Lcom/motorola/camera/modes/VideoModeService;->notifyClient(IIILjava/lang/Object;)V

    goto :goto_1
.end method
