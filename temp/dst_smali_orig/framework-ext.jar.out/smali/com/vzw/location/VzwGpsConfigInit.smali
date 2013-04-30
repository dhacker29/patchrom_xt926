.class public Lcom/vzw/location/VzwGpsConfigInit;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsConfigInit;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VzwGpsConfigInit"


# instance fields
.field private mAppId:J

.field private mAppPasswd:Ljava/lang/String;

.field private mLastMpcHost:Ljava/lang/String;

.field private mLastMpcPort:I

.field private mMpcHost:Ljava/lang/String;

.field private mMpcPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    iput-object v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    iput v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    iput-object v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/lang/String;

    iput v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #name:Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwGpsConfigInit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationId()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    return-wide v0
.end method

.method public getApplicationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcHost()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcPort()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return v0
.end method

.method public getSmsPrefixInfo()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public resetMpc()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return-void
.end method

.method public setCredentials(JLjava/lang/String;)V
    .locals 0
    .parameter "appId"
    .parameter "appPasswd"

    .prologue
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    iput-object p3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    return-void
.end method

.method public setMpc(Ljava/lang/String;I)V
    .locals 0
    .parameter "mpcHost"
    .parameter "mpcPort"

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    return-void
.end method

.method public setMpc(Ljava/net/InetAddress;I)V
    .locals 1
    .parameter "mpcHost"
    .parameter "mpcPort"

    .prologue
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    return-void
.end method

.method public setMpcHost(Ljava/lang/String;)V
    .locals 1
    .parameter "mpcHost"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/lang/String;

    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    return-void
.end method

.method public setMpcPort(I)V
    .locals 1
    .parameter "mpcPort"

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    iput p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return-void
.end method

.method public setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "appPrefix"
    .parameter "fqan"

    .prologue
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-wide v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, ""

    .local v0, hostAddr:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .end local v0           #hostAddr:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    goto :goto_0
.end method
