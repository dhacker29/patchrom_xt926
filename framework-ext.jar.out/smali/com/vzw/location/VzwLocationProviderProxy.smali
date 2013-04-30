.class public Lcom/vzw/location/VzwLocationProviderProxy;
.super Ljava/lang/Object;
.source "VzwLocationProviderProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationProviderProxy"


# instance fields
.field private mEnabled:Z

.field private mLocationTracking:Z

.field private final mName:Ljava/lang/String;

.field private final mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;)V
    .locals 1
    .parameter "name"
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mLocationTracking:Z

    .line 28
    iput-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mEnabled:Z

    .line 31
    iput-object p1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    .line 33
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 126
    return-void
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPdeAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->getPdeAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .parameter "extras"

    .prologue
    .line 91
    const/4 v0, -0x1

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mEnabled:Z

    .line 77
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->init(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V

    .line 78
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method public isLocationTracking()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 131
    return-void
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method setPdeAddress(Ljava/net/InetSocketAddress;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->setPdeAddress(Ljava/net/InetSocketAddress;)V

    .line 113
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mEnabled:Z

    .line 82
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->shutdown()V

    .line 83
    return-void
.end method

.method start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z
    .locals 1
    .parameter "criteria"
    .parameter "sessionId"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z

    move-result v0

    return v0
.end method

.method stop()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->stop()Z

    move-result v0

    return v0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public updateNetworkState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 121
    return-void
.end method
