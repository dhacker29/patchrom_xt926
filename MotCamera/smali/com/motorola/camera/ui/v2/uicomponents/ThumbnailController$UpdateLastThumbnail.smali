.class Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;
.super Landroid/os/AsyncTask;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLastThumbnail"
.end annotation

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


# instance fields
.field private mCameraData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;

.field private mId:J

.field private mKeyguardLocked:Z

.field private mType:Z

.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter "keyguardLocked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraRoll$CameraData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, cameraData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mFilePath:Ljava/lang/String;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mType:Z

    .line 148
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mId:J

    .line 153
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mCameraData:Ljava/util/ArrayList;

    .line 154
    iput-boolean p3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mKeyguardLocked:Z

    .line 155
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "voids"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 160
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mCameraData:Ljava/util/ArrayList;

    .line 162
    .local v7, camData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraRoll$CameraData;>;"
    const/4 v6, 0x0

    .line 163
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 164
    .local v8, i:I
    const/4 v9, 0x0

    .line 165
    .local v9, lastData:Lcom/motorola/camera/CameraRoll$CameraData;
    :goto_0
    if-nez v6, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 166
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #lastData:Lcom/motorola/camera/CameraRoll$CameraData;
    check-cast v9, Lcom/motorola/camera/CameraRoll$CameraData;

    .line 167
    .restart local v9       #lastData:Lcom/motorola/camera/CameraRoll$CameraData;
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mApplication:Landroid/app/Application;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9}, Lcom/motorola/camera/CameraRoll$CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {v9}, Lcom/motorola/camera/CameraRoll$CameraData;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/motorola/camera/CameraRoll$CameraData;->getDataType()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v10

    :goto_1
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mThumbnailSize:I
    invoke-static {v5}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->access$100(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/Util;->getThumbnail(Landroid/content/ContentResolver;JLjava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 170
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "ThumbnailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/motorola/camera/CameraRoll$CameraData;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v4, v11

    .line 167
    goto :goto_1

    .line 175
    :cond_2
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraRoll$CameraData;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraRoll$CameraData;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mFilePath:Ljava/lang/String;

    .line 176
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraRoll$CameraData;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraRoll$CameraData;->getDataType()I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mType:Z

    .line 177
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraRoll$CameraData;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraRoll$CameraData;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mId:J

    .line 178
    return-object v6

    :cond_3
    move v10, v11

    .line 176
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 184
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ThumbnailController"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->access$200(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;)Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->access$200(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;)Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mFilePath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mType:Z

    iget-wide v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mId:J

    iget-boolean v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->mKeyguardLocked:Z

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;->onUpdateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;ZJZ)V

    .line 189
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$UpdateLastThumbnail;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
