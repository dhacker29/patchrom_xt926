.class Lcom/android/server/location/LocationProviderProxy$Connection;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

.field private mProvider:Landroid/location/ILocationProvider;

.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    return-void
.end method


# virtual methods
.method public getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProvider()Landroid/location/ILocationProvider;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    monitor-exit v1

    return-object v0

    .line 137
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
    .line 115
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 117
    invoke-static {p2}, Landroid/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    .line 118
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mReconnect:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 123
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
    .line 127
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 128
    :try_start_0
    const-string v0, "LocationProviderProxy"

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

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    .line 130
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mReconnect:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 151
    monitor-exit v3

    .line 193
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .line 154
    .local v1, provider:Landroid/location/ILocationProvider;
    if-nez v1, :cond_1

    .line 155
    monitor-exit v3

    goto :goto_0

    .line 192
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 160
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$700(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-interface {v1}, Landroid/location/ILocationProvider;->enable()V

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$800(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTime:J
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$900(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTime:J
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$900(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$1000(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v2

    invoke-interface {v1, v4, v5, v2}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$1100(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 170
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$1200(Lcom/android/server/location/LocationProviderProxy;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$1100(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :cond_5
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_6

    .line 178
    :try_start_3
    new-instance v2, Lcom/android/internal/location/DummyLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$1300(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;)V

    iput-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    .line 179
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresNetwork()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresNetwork(Z)V

    .line 180
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresSatellite()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresSatellite(Z)V

    .line 181
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresCell()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresCell(Z)V

    .line 182
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->hasMonetaryCost()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 183
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsAltitude()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsAltitude(Z)V

    .line 184
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsSpeed()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsSpeed(Z)V

    .line 185
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsBearing()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsBearing(Z)V

    .line 186
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getPowerRequirement()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setPowerRequirement(I)V

    .line 187
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getAccuracy()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/location/DummyLocationProvider;->setAccuracy(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    :cond_6
    :goto_2
    :try_start_4
    monitor-exit v3

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 172
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method