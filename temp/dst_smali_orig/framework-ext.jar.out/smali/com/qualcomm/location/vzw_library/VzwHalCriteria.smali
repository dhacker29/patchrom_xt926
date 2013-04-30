.class public Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
.super Landroid/location/Criteria;
.source "VzwHalCriteria.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/location/vzw_library/VzwHalCriteria;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHintNextFixArriveInSec:I

.field private mHintNextFixHorizontalAccuracy:I

.field private mHintNextFixMode:I

.field private mHybridMode:I

.field private mMaximumResponseTime:I

.field private mMode:I

.field private mPreferredHorizontalAccuracy:I

.field private mPreferredVerticalAccuracy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria$1;

    invoke-direct {v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria$1;-><init>()V

    sput-object v0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setToDefault()V

    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .locals 1
    .parameter "criteria"

    .prologue
    invoke-direct {p0, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setToDefault()V

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x32

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 1
    .parameter "criteria"

    .prologue
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    iget v0, p1, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    return p1
.end method

.method static synthetic access$202(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    return p1
.end method

.method static synthetic access$302(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    return p1
.end method

.method static synthetic access$402(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    return p1
.end method

.method static synthetic access$502(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    return p1
.end method

.method static synthetic access$602(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    return p1
.end method

.method static synthetic access$702(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    return p1
.end method

.method private setToDefault()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    iput v1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    iput v1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    return v0
.end method

.method public getHintNextFixArriveInSec()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    return v0
.end method

.method public getHintNextFixHorizontalAccuracy()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    return v0
.end method

.method public getHintNextFixMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    return v0
.end method

.method public getHybridMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    return v0
.end method

.method public getMaximumResponseTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    return v0
.end method

.method public getPreferredHorizontalAccuracy()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    return v0
.end method

.method public getPreferredVerticalAccuracy()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    return v0
.end method

.method public setFixMode(I)V
    .locals 2
    .parameter "Mode"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHintNextFixArriveInSec(I)V
    .locals 2
    .parameter "interval"

    .prologue
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    :goto_0
    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time (sec) between fixes must be in -1, or [0..255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHintNextFixHorizontalAccuracy(I)V
    .locals 2
    .parameter "ErrorMeter"

    .prologue
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hint for horizontal accuracy must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    return-void
.end method

.method public setHintNextFixMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHybridMode(I)V
    .locals 0
    .parameter "hybridMode"

    .prologue
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    return-void
.end method

.method public setMaximumResponseTime(I)V
    .locals 2
    .parameter "TimeSec"

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout (sec) must be in [0..255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredHorizontalAccuracy(I)V
    .locals 2
    .parameter "ErrorMeter"

    .prologue
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Horizontal accuracy must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    return-void
.end method

.method public setPreferredVerticalAccuracy(I)V
    .locals 2
    .parameter "ErrorMeter"

    .prologue
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertical accuracy must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mMaximumResponseTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixArriveInSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->mHybridMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
