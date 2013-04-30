.class Lcom/android/server/location/GeocoderProxy$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeocoderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$100(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$200(Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy$Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GeocoderProxy$Connection;->getProvider()Landroid/location/IGeocodeProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$300(Lcom/android/server/location/GeocoderProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;
    invoke-static {v3}, Lcom/android/server/location/GeocoderProxy;->access$200(Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy$Connection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    new-instance v3, Lcom/android/server/location/GeocoderProxy$Connection;

    iget-object v4, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/location/GeocoderProxy$Connection;-><init>(Lcom/android/server/location/GeocoderProxy;Lcom/android/server/location/GeocoderProxy$1;)V

    #setter for: Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;
    invoke-static {v1, v3}, Lcom/android/server/location/GeocoderProxy;->access$202(Lcom/android/server/location/GeocoderProxy;Lcom/android/server/location/GeocoderProxy$Connection;)Lcom/android/server/location/GeocoderProxy$Connection;

    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$300(Lcom/android/server/location/GeocoderProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/location/GeocoderProxy;->access$400(Lcom/android/server/location/GeocoderProxy;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;
    invoke-static {v4}, Lcom/android/server/location/GeocoderProxy;->access$200(Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy$Connection;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$500(Lcom/android/server/location/GeocoderProxy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    monitor-exit v2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeocoderProxy"

    const-string v3, "unbindService Exception: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "GeocoderProxy"

    const-string v2, "Exception in mReconnect: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
