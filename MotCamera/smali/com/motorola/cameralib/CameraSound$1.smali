.class Lcom/motorola/cameralib/CameraSound$1;
.super Ljava/lang/Object;
.source "CameraSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/cameralib/CameraSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/cameralib/CameraSound;


# direct methods
.method constructor <init>(Lcom/motorola/cameralib/CameraSound;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/motorola/cameralib/CameraSound$1;->this$0:Lcom/motorola/cameralib/CameraSound;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 187
    if-nez p3, :cond_1

    .line 188
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound$1;->this$0:Lcom/motorola/cameralib/CameraSound;

    #getter for: Lcom/motorola/cameralib/CameraSound;->mSoundIdToPlay:I
    invoke-static {v0}, Lcom/motorola/cameralib/CameraSound;->access$000(Lcom/motorola/cameralib/CameraSound;)I

    move-result v0

    if-ne v0, p2, :cond_0

    move-object v0, p1

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    .line 189
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 190
    iget-object v0, p0, Lcom/motorola/cameralib/CameraSound$1;->this$0:Lcom/motorola/cameralib/CameraSound;

    const/4 v1, -0x1

    #setter for: Lcom/motorola/cameralib/CameraSound;->mSoundIdToPlay:I
    invoke-static {v0, v1}, Lcom/motorola/cameralib/CameraSound;->access$002(Lcom/motorola/cameralib/CameraSound;I)I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v0, "MediaActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load sound for playback (status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
