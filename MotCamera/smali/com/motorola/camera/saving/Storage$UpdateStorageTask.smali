.class Lcom/motorola/camera/saving/Storage$UpdateStorageTask;
.super Landroid/os/AsyncTask;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateStorageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mStorage:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/camera/saving/Storage;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/saving/Storage;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->this$0:Lcom/motorola/camera/saving/Storage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/saving/Storage;Lcom/motorola/camera/saving/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;-><init>(Lcom/motorola/camera/saving/Storage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "params"

    .prologue
    .line 386
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->mStorage:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->this$0:Lcom/motorola/camera/saving/Storage;

    iget-object v1, p0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->mStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 392
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->mStorage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/AppSettings;->updateStorageValue(Ljava/lang/String;J)V

    .line 393
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/Storage$UpdateStorageTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
