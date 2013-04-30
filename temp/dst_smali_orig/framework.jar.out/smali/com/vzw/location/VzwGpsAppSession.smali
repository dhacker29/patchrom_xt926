.class Lcom/vzw/location/VzwGpsAppSession;
.super Ljava/lang/Object;
.source "VzwGpsAppSession.java"


# instance fields
.field private mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

.field private mGpsReq:Lcom/vzw/location/VzwGpsRequest;

.field private mPendingBroadcasts:I

.field private mPid:I

.field private mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

.field private mUid:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mUid:I

    iput p2, p0, Lcom/vzw/location/VzwGpsAppSession;->mPid:I

    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mGpsReq:Lcom/vzw/location/VzwGpsRequest;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    return-void
.end method


# virtual methods
.method public getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

    return-object v0
.end method

.method public getGpsRequest()Lcom/vzw/location/VzwGpsRequest;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mGpsReq:Lcom/vzw/location/VzwGpsRequest;

    return-object v0
.end method

.method public getPendingBroadcasts()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPid:I

    return v0
.end method

.method public getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mUid:I

    return v0
.end method

.method public setAuthRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 0
    .parameter "authReq"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

    return-void
.end method

.method public setGpsRequest(Lcom/vzw/location/VzwGpsRequest;)V
    .locals 0
    .parameter "gpsReq"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mGpsReq:Lcom/vzw/location/VzwGpsRequest;

    return-void
.end method

.method public setPendingBroadcasts(I)V
    .locals 0
    .parameter "pendingBroadcases"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    return-void
.end method

.method public setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 0
    .parameter "sl"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    return-void
.end method
