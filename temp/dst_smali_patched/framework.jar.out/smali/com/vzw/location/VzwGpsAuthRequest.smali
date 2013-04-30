.class Lcom/vzw/location/VzwGpsAuthRequest;
.super Ljava/lang/Object;
.source "VzwGpsAuthRequest.java"


# instance fields
.field private mCfgInit:Lcom/vzw/location/VzwGpsConfigInit;

.field private mResult:I

.field private mSession:Lcom/vzw/location/VzwGpsAppSession;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 1
    .parameter "appSession"
    .parameter "cfgInit"

    .prologue
    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mSession:Lcom/vzw/location/VzwGpsAppSession;

    iput-object p2, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mCfgInit:Lcom/vzw/location/VzwGpsConfigInit;

    iput v0, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mState:I

    iput v0, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mResult:I

    return-void
.end method


# virtual methods
.method public getAppSession()Lcom/vzw/location/VzwGpsAppSession;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mSession:Lcom/vzw/location/VzwGpsAppSession;

    return-object v0
.end method

.method public getCfgInit()Lcom/vzw/location/VzwGpsConfigInit;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mCfgInit:Lcom/vzw/location/VzwGpsConfigInit;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mResult:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mState:I

    return v0
.end method

.method public setAppSession(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 0
    .parameter "appSession"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mSession:Lcom/vzw/location/VzwGpsAppSession;

    return-void
.end method

.method public setCfgInit(Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 0
    .parameter "cfgInit"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mCfgInit:Lcom/vzw/location/VzwGpsConfigInit;

    return-void
.end method

.method public setResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mResult:I

    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsAuthRequest;->mState:I

    return-void
.end method
