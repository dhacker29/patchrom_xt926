.class final Lcom/vzw/location/VzwCriteria$1;
.super Ljava/lang/Object;
.source "VzwCriteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vzw/location/VzwCriteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;
    .locals 2
    .parameter "in"

    .prologue
    .line 217
    new-instance v0, Lcom/vzw/location/VzwCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/os/Parcel;Lcom/vzw/location/VzwCriteria$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwCriteria;
    .locals 1
    .parameter "size"

    .prologue
    .line 221
    new-array v0, p1, [Lcom/vzw/location/VzwCriteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCriteria$1;->newArray(I)[Lcom/vzw/location/VzwCriteria;

    move-result-object v0

    return-object v0
.end method
