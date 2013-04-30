.class Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"

# interfaces
.implements Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationManagerCallbacks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;
    }
.end annotation


# static fields
.field private static final MAX_SVS:I = 0xff

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final SESSION_BEGIN_TIMEOUT:J = 0x7d0L


# instance fields
.field private mFixStartTime:J

.field protected mGpsRunning:Z

.field private mLastSvPrint:J

.field private mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

.field protected mPrevGpsRunning:Z

.field private mPrns:[I

.field private mSnrs:[F

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvHasAlmanac:[I

.field private mSvHasEphemeris:[I

.field private mSvUsedInFix:[I

.field private mTTFF:I

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;

.field vzwLocation:Lcom/vzw/location/VzwLocation;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xff

    .line 832
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 816
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrns:[I

    .line 817
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    .line 818
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    .line 819
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    .line 830
    new-instance v0, Lcom/vzw/location/VzwLocation;

    const-string v1, "vzw_lbs"

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    .line 833
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;-><init>(Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;Lcom/vzw/location/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    .line 834
    return-void
.end method

.method private ReportOnDeviceStatusChanged()V
    .locals 12

    .prologue
    .line 1075
    const-string v0, "VzwLocationMgrService"

    const-string v1, "ReportOnDeviceStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1078
    .local v10, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    .local v9, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_start_1
    iget-object v0, v9, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iget-boolean v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    iget v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvCount:I

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrns:[I

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvHasEphemeris:[I

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvHasAlmanac:[I

    invoke-interface/range {v0 .. v6}, Lcom/vzw/location/IVzwGpsStatusListener;->onDeviceStatusChanged(ZI[I[F[I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1078
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v7

    .line 1084
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "VzwLocationMgrService"

    const-string v1, "RemoteException in reportStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1087
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1090
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v9           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_0
    monitor-exit v11

    .line 1091
    return-void

    .line 1090
    .end local v8           #i:I
    .end local v10           #size:I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private UpdateGpsStatus(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "gpsRunning"

    .prologue
    .line 973
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    .line 974
    iget-boolean v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrevGpsRunning:Z

    iget-boolean v5, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    if-eq v4, v5, :cond_3

    .line 975
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 976
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 977
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 978
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    .local v2, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_start_1
    iget-boolean v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    if-eqz v4, :cond_0

    .line 981
    iget-object v4, v2, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v4}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsStarted()V

    .line 977
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    :cond_0
    iget-object v4, v2, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v4}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "VzwLocationMgrService"

    const-string v6, "RemoteException in reportStatus()"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 989
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 992
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 996
    const/4 v4, 0x0

    iput v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mTTFF:I

    .line 997
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->removeMessages(I)V

    .line 998
    iget-boolean v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    if-eqz v4, :cond_2

    .line 999
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mFixStartTime:J

    .line 1002
    :cond_2
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    iget-boolean v5, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    #calls: Lcom/vzw/location/VzwLocationManagerService;->setGpsIconEnabled(Z)V
    invoke-static {v4, v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1400(Lcom/vzw/location/VzwLocationManagerService;Z)V

    .line 1003
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->ReportOnDeviceStatusChanged()V

    .line 1004
    iget-boolean v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    iput-boolean v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrevGpsRunning:Z

    .line 1006
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_3
    return-void

    .line 992
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method static synthetic access$700(Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->UpdateGpsStatus(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public ReportEngineStatus(I)V
    .locals 9
    .parameter "statusCode"

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 921
    const-string v1, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportEngineStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->getEngineStatus(I)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/vzw/location/VzwLocationManagerService;->access$1200(Lcom/vzw/location/VzwLocationManagerService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    packed-switch p1, :pswitch_data_0

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 926
    :pswitch_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1300(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsReqMgr;->getNumRequests()I

    move-result v1

    if-lez v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 928
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 930
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v4}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->removeMessages(I)V

    .line 931
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 940
    .end local v0           #m:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1300(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsReqMgr;->getNumRequests()I

    move-result v1

    if-lez v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 942
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 944
    .restart local v0       #m:Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v4}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->removeMessages(I)V

    .line 945
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 956
    .end local v0           #m:Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 957
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 959
    .restart local v0       #m:Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v4}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->removeMessages(I)V

    .line 960
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v0, v7, v8}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 963
    .end local v0           #m:Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 964
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 966
    .restart local v0       #m:Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v4}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->removeMessages(I)V

    .line 967
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v0, v7, v8}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public ReportGpsStatus(I)V
    .locals 3
    .parameter "statusCode"

    .prologue
    .line 897
    const-string v0, "VzwLocationMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportGpsStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void
.end method

.method public ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V
    .locals 7
    .parameter "location"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 854
    const-string v1, "VzwLocationMgrService"

    const-string v2, "ReportLocation(): got fix"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 858
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getValidFieldMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getValidFieldMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 860
    iget-boolean v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->setGpsIconFixChange(Z)V
    invoke-static {v1, v5}, Lcom/vzw/location/VzwLocationManagerService;->access$900(Lcom/vzw/location/VzwLocationManagerService;Z)V

    .line 863
    :cond_0
    iget v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mTTFF:I

    if-nez v1, :cond_1

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mFixStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mTTFF:I

    .line 865
    invoke-virtual {p0}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->ReportOnFirstFix()V

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwLocation;->set(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V

    .line 873
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 876
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v1, v5, v2}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 877
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->vzwLocation:Lcom/vzw/location/VzwLocation;

    invoke-static {v1, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 878
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 881
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getValidFieldMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 883
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 884
    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    .line 885
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :cond_2
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 890
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    invoke-virtual {v1, v6}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->removeMessages(I)V

    .line 891
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLocationCallbacksHandler:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 892
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->releaseWakeLock()V
    invoke-static {v1}, Lcom/vzw/location/VzwLocationManagerService;->access$800(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 893
    return-void

    .line 885
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ReportOnFirstFix()V
    .locals 8

    .prologue
    .line 1057
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 1058
    :try_start_0
    const-string v4, "VzwLocationMgrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first fix TTFF: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mTTFF:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1060
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1061
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    .local v2, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_start_1
    iget-object v4, v2, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iget v6, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mTTFF:I

    invoke-interface {v4, v6}, Lcom/vzw/location/IVzwGpsStatusListener;->onFirstFix(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1060
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "VzwLocationMgrService"

    const-string v6, "RemoteException for mListener.onFirstFix"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1068
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1071
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_0
    monitor-exit v5

    .line 1072
    return-void

    .line 1071
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public ReportSvStatus(Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;)V
    .locals 12
    .parameter "svSvInfo"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 1012
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 1014
    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getNumSatellitesInView()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvCount:I

    .line 1015
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewPRNs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrns:[I

    .line 1016
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    .line 1017
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewElevation()[F

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    .line 1018
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewAzimuth()[F

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    .line 1019
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesWithEphemeris()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvHasEphemeris:[I

    .line 1020
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesWithAlmanac()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvHasAlmanac:[I

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLastSvPrint:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mLastSvPrint:J

    .line 1024
    const-string v0, "VzwLocationMgrService"

    const-string v1, "PRN, SNR, ELEV, AZIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrns:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    if-eqz v0, :cond_0

    .line 1027
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrns:[I

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 1028
    const-string v0, "VzwLocationMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrns:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1032
    .end local v8           #i:I
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    if-eqz v0, :cond_1

    .line 1033
    const-string v0, "VzwLocationMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Used in Fix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1038
    .local v10, size:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    .local v9, listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :try_start_1
    iget-object v0, v9, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iget v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvCount:I

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mPrns:[I

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSnrs:[F

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvElevations:[F

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mSvUsedInFix:[I

    invoke-interface/range {v0 .. v6}, Lcom/vzw/location/IVzwGpsStatusListener;->onSvStatusChanged(I[I[F[F[F[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1038
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1043
    :catch_0
    move-exception v7

    .line 1044
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "VzwLocationMgrService"

    const-string v1, "RemoteException in reportSvStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1047
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1050
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v9           #listener:Lcom/vzw/location/VzwLocationManagerService$Listener;
    :cond_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1052
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->ReportOnDeviceStatusChanged()V

    .line 1053
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->releaseWakeLock()V
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$800(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 1054
    return-void

    .line 1050
    .end local v8           #i:I
    .end local v10           #size:I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
