.class final Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;
.super Ljava/lang/Object;
.source "PanoProgressUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaySound"
.end annotation


# instance fields
.field final mAfd:Landroid/content/res/AssetFileDescriptor;

.field final mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 296
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    return-void
.end method


# virtual methods
.method play()V
    .locals 7

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound$1;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 307
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 308
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 309
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 310
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v6

    .line 312
    .local v6, ioe:Ljava/io/IOException;
    invoke-static {}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaySound.play ioexception"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stop()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 318
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mAfd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlaySound.stop ioexception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
