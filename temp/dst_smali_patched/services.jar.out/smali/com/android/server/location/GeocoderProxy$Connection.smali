.class Lcom/android/server/location/GeocoderProxy$Connection;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeocoderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mProvider:Landroid/location/IGeocodeProvider;

.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GeocoderProxy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GeocoderProxy;Lcom/android/server/location/GeocoderProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GeocoderProxy$Connection;-><init>(Lcom/android/server/location/GeocoderProxy;)V

    return-void
.end method


# virtual methods
.method public getProvider()Landroid/location/IGeocodeProvider;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$100(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->mProvider:Landroid/location/IGeocodeProvider;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$100(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mServiceConnection:Lcom/android/server/location/GeocoderProxy$Connection;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$200(Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy$Connection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-static {p2}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->mProvider:Landroid/location/IGeocodeProvider;

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->mProvider:Landroid/location/IGeocodeProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$500(Lcom/android/server/location/GeocoderProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mReconnect:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/location/GeocoderProxy;->access$600(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "className"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$100(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "GeocoderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->mProvider:Landroid/location/IGeocodeProvider;

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$500(Lcom/android/server/location/GeocoderProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    #getter for: Lcom/android/server/location/GeocoderProxy;->mReconnect:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/location/GeocoderProxy;->access$600(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
