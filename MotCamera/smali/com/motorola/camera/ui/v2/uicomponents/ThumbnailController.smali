.class public Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/motorola/camera/CameraRoll$CameraRollUpdate;
.implements Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;,
        Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailController"


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCameraRoll:Lcom/motorola/camera/CameraRoll;

.field private mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

.field private mThumbnailSize:I

.field private mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mThumbnailSize:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    .line 83
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mApplication:Landroid/app/Application;

    .line 84
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mThumbnailSize:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;)Landroid/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mThumbnailSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;)Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    return-object v0
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mApplication:Landroid/app/Application;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 104
    .local v0, keyguard:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraRoll;->destroy()V

    .line 138
    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    .line 140
    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    .line 141
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveHelper;->removeSaveListener(Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;)V

    .line 142
    return-void
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraRoll$CameraData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, camData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->cancel(Z)Z

    .line 197
    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    invoke-direct {v1, p0, v0, v3}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;Ljava/util/ArrayList;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    .line 198
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method

.method public onUpdateData(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, cameraRollData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    const-wide/16 v4, -0x1

    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->isKeyguardLocked()Z

    move-result v6

    move-object v2, v1

    invoke-interface/range {v0 .. v6}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;->onUpdateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;ZJZ)V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->isKeyguardLocked()Z

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    .line 120
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mUpdateThumbnailTask:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraRoll;->reload()V

    .line 130
    :cond_0
    return-void
.end method

.method public setLastThumbnailListener(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    .line 93
    new-instance v0, Lcom/motorola/camera/CameraRoll;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mApplication:Landroid/app/Application;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraRoll;-><init>(Landroid/app/Application;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    .line 94
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraRoll;->setUpdateListener(Lcom/motorola/camera/CameraRoll$CameraRollUpdate;)V

    .line 95
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mCameraRoll:Lcom/motorola/camera/CameraRoll;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraRoll;->reload()V

    .line 97
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveHelper;->addSaveListener(Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;)V

    .line 99
    :cond_0
    return-void
.end method
