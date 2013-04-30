.class Lcom/motorola/camera/saving/Storage$StorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/saving/Storage;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/saving/Storage;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/motorola/camera/saving/Storage$StorageReceiver;->this$0:Lcom/motorola/camera/saving/Storage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/saving/Storage;Lcom/motorola/camera/saving/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/Storage$StorageReceiver;-><init>(Lcom/motorola/camera/saving/Storage;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, uri:Landroid/net/Uri;
    if-eqz p2, :cond_4

    .line 426
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 427
    const-string v3, "MotStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received storage event to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_4

    .line 431
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, path:Ljava/lang/String;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 434
    const-string v3, "MotStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received storage event for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/motorola/camera/saving/Storage$StorageReceiver;->this$0:Lcom/motorola/camera/saving/Storage;

    const/4 v4, 0x1

    #calls: Lcom/motorola/camera/saving/Storage;->sendMountEvent(ZLjava/lang/String;)V
    invoke-static {v3, v4, v1}, Lcom/motorola/camera/saving/Storage;->access$200(Lcom/motorola/camera/saving/Storage;ZLjava/lang/String;)V

    .line 441
    :cond_2
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/saving/Storage$StorageReceiver;->this$0:Lcom/motorola/camera/saving/Storage;

    const/4 v4, 0x0

    #calls: Lcom/motorola/camera/saving/Storage;->sendMountEvent(ZLjava/lang/String;)V
    invoke-static {v3, v4, v1}, Lcom/motorola/camera/saving/Storage;->access$200(Lcom/motorola/camera/saving/Storage;ZLjava/lang/String;)V

    .line 447
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :cond_4
    return-void
.end method
