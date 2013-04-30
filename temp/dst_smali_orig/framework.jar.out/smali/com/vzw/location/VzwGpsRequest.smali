.class Lcom/vzw/location/VzwGpsRequest;
.super Ljava/lang/Object;
.source "VzwGpsRequest.java"


# instance fields
.field private mAppSession:Lcom/vzw/location/VzwGpsAppSession;

.field private mCriteria:Lcom/vzw/location/VzwCriteria;

.field private mFixesReported:J

.field private mLastUpdated:J

.field private mLocListener:Lcom/vzw/location/IVzwLocationListener;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "appSession"
    .parameter "criteria"
    .parameter "locListener"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vzw/location/VzwGpsRequest;->mAppSession:Lcom/vzw/location/VzwGpsAppSession;

    iput-object p2, p0, Lcom/vzw/location/VzwGpsRequest;->mCriteria:Lcom/vzw/location/VzwCriteria;

    iput-object p3, p0, Lcom/vzw/location/VzwGpsRequest;->mLocListener:Lcom/vzw/location/IVzwLocationListener;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->mLastUpdated:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->mFixesReported:J

    return-void
.end method


# virtual methods
.method public getAppSession()Lcom/vzw/location/VzwGpsAppSession;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsRequest;->mAppSession:Lcom/vzw/location/VzwGpsAppSession;

    return-object v0
.end method

.method public getFixesReported()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->mFixesReported:J

    return-wide v0
.end method

.method public getGpsConfig()Lcom/vzw/location/VzwCriteria;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsRequest;->mCriteria:Lcom/vzw/location/VzwCriteria;

    return-object v0
.end method

.method public getLocListener()Lcom/vzw/location/IVzwLocationListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsRequest;->mLocListener:Lcom/vzw/location/IVzwLocationListener;

    return-object v0
.end method

.method public getlastUpdated()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->mLastUpdated:J

    return-wide v0
.end method

.method public incrementFixesReported()V
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->mFixesReported:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsRequest;->mFixesReported:J

    return-void
.end method

.method public setAppSession(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 0
    .parameter "appSession"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsRequest;->mAppSession:Lcom/vzw/location/VzwGpsAppSession;

    return-void
.end method

.method public setGpsConfig(Lcom/vzw/location/VzwCriteria;)V
    .locals 0
    .parameter "criteria"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsRequest;->mCriteria:Lcom/vzw/location/VzwCriteria;

    return-void
.end method

.method public setlastUpdated(J)V
    .locals 0
    .parameter "t"

    .prologue
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsRequest;->mLastUpdated:J

    return-void
.end method
