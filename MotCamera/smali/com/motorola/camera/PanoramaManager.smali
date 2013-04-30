.class public Lcom/motorola/camera/PanoramaManager;
.super Ljava/util/Observable;
.source "PanoramaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;
    }
.end annotation


# static fields
.field public static final ABORTED_EXTRA:Ljava/lang/String; = "aborted"

.field public static final DATA_EXTRA:Ljava/lang/String; = "data"

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field public static final DONE_EXTRA:Ljava/lang/String; = "done"

.field public static final IMAGE_PREVIEW_EXTRA:Ljava/lang/String; = "imagePreview"

.field public static final PANNING_RATE_X_EXTRA:Ljava/lang/String; = "panningRateX"

.field public static final PANNING_RATE_Y_EXTRA:Ljava/lang/String; = "panningRateY"

.field public static final PREPARING_EXTRA:Ljava/lang/String; = "preparing"

.field public static final PROGRESS_X_EXTRA:Ljava/lang/String; = "progressX"

.field public static final PROGRESS_Y_EXTRA:Ljava/lang/String; = "progressY"

.field public static final SAVING_PROGRESS_EXTRA:Ljava/lang/String; = "savingProgress"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/motorola/camera/PanoramaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PanoramaManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public imagePreview(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "data"

    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREVIEW_IMAGE:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v1, "imagePreview"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    invoke-virtual {p0}, Lcom/motorola/camera/PanoramaManager;->setChanged()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/motorola/camera/PanoramaManager;->notifyObservers(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public preparingPanorama(Z)V
    .locals 3
    .parameter "preparing"

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "data"

    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREPARING_PANORAMA:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v1, "preparing"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/camera/PanoramaManager;->setChanged()V

    .line 68
    invoke-virtual {p0, v0}, Lcom/motorola/camera/PanoramaManager;->notifyObservers(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public savingError()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "data"

    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_ERROR:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/PanoramaManager;->setChanged()V

    .line 43
    invoke-virtual {p0, v0}, Lcom/motorola/camera/PanoramaManager;->notifyObservers(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public savingInfo(IZ)V
    .locals 3
    .parameter "progress"
    .parameter "done"

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "data"

    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_PROGRESS:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v1, "savingProgress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v1, "done"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {p0}, Lcom/motorola/camera/PanoramaManager;->setChanged()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/motorola/camera/PanoramaManager;->notifyObservers(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public viewFinderInfo(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 34
    const-string v0, "data"

    sget-object v1, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_VIEWFINDER_INFO:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v1}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p0}, Lcom/motorola/camera/PanoramaManager;->setChanged()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/motorola/camera/PanoramaManager;->notifyObservers(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
