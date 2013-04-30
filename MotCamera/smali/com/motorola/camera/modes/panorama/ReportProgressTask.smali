.class public Lcom/motorola/camera/modes/panorama/ReportProgressTask;
.super Landroid/os/AsyncTask;
.source "ReportProgressTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

.field private final mWaitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/PanoramaManager;)V
    .locals 1
    .parameter "panoramaManager"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mWaitObject:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    .line 20
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "voids"

    .prologue
    const/4 v6, 0x1

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->isCancelled()Z

    move-result v3

    invoke-virtual {v2, v6, v3}, Lcom/android/camera/MosaicFrameProcessor;->reportProgress(ZZ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    .local v1, progress:Ljava/lang/Integer;
    new-array v2, v6, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->publishProgress([Ljava/lang/Object;)V

    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mWaitObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mWaitObject:Ljava/lang/Object;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 36
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Panorama reportProgress failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 41
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #progress:Ljava/lang/Integer;
    :cond_0
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    return-object v2
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/PanoramaManager;->savingInfo(IZ)V

    .line 57
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "aVoid"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/PanoramaManager;->savingInfo(IZ)V

    .line 47
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-virtual {v0, v1, v1}, Lcom/motorola/camera/PanoramaManager;->savingInfo(IZ)V

    .line 25
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/PanoramaManager;->savingInfo(IZ)V

    .line 52
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/panorama/ReportProgressTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
