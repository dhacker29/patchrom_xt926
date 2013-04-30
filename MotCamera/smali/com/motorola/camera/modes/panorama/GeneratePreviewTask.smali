.class public Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;
.super Landroid/os/AsyncTask;
.source "GeneratePreviewTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mManager:Lcom/motorola/camera/PanoramaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PanoramaManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->mManager:Lcom/motorola/camera/PanoramaManager;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "voids"

    .prologue
    const/4 v4, 0x0

    .line 26
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 27
    sget-object v5, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->TAG:Ljava/lang/String;

    const-string v6, "Creating low res Mosaic for display"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->createMosaic(Z)Landroid/graphics/YuvImage;

    move-result-object v2

    .line 30
    .local v2, image:Landroid/graphics/YuvImage;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    if-eqz v2, :cond_1

    .line 33
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 42
    .local v0, data:[B
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 45
    .end local v0           #data:[B
    .end local v2           #image:Landroid/graphics/YuvImage;
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v4

    .line 36
    .restart local v2       #image:Landroid/graphics/YuvImage;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 37
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->TAG:Ljava/lang/String;

    const-string v6, "Exception in generating preview image"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 43
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #image:Landroid/graphics/YuvImage;
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v1

    .line 44
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->TAG:Ljava/lang/String;

    const-string v6, "failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->mManager:Lcom/motorola/camera/PanoramaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PanoramaManager;->preparingPanorama(Z)V

    .line 61
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->mManager:Lcom/motorola/camera/PanoramaManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PanoramaManager;->preparingPanorama(Z)V

    .line 56
    return-void
.end method
