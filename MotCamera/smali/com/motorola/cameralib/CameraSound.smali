.class public Lcom/motorola/cameralib/CameraSound;
.super Ljava/lang/Object;
.source "CameraSound.java"


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field public static final MULTI_SHUTTER_CLICK:I = 0x4

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_FILES:[Ljava/lang/String; = null

.field private static final SOUND_NOT_LOADED:I = -0x1

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/camera_focus.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/multishot_click.ogg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/cameralib/CameraSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v1, Lcom/motorola/cameralib/CameraSound$1;

    invoke-direct {v1, p0}, Lcom/motorola/cameralib/CameraSound$1;-><init>(Lcom/motorola/cameralib/CameraSound;)V

    iput-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 109
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v4, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    .line 111
    iget-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/motorola/cameralib/CameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 112
    sget-object v1, Lcom/motorola/cameralib/CameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    aput v3, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iput v3, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIdToPlay:I

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/cameralib/CameraSound;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIdToPlay:I

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/cameralib/CameraSound;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIdToPlay:I

    return p1
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 4
    .parameter "soundName"

    .prologue
    .line 132
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/motorola/cameralib/CameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    iget-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/motorola/cameralib/CameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 7
    .parameter "soundName"

    .prologue
    .line 171
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/motorola/cameralib/CameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/motorola/cameralib/CameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIdToPlay:I

    .line 177
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    iget v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/motorola/cameralib/CameraSound;->mSoundIds:[I

    aget v1, v1, p1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/cameralib/CameraSound;->mSoundPool:Landroid/media/SoundPool;

    .line 209
    :cond_0
    return-void
.end method
