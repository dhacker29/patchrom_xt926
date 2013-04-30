.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x7

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_GREATER:I = 0x5

.field public static final SIGNAL_STRENGTH_GREATEST:I = 0x6

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaAsuLevel:I

.field private mCdmaAsuMaxLevel:I

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mCdmaLevel:I

.field private mCdmaMaxLevel:I

.field private mEvdoAsuLevel:I

.field private mEvdoAsuMaxLevel:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoLevel:I

.field private mEvdoMaxLevel:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmLevel:I

.field private mGsmMaxLevel:I

.field private mGsmOemBitErrorRate:I

.field private mGsmOemSignalStrength:I

.field private mGsmSignalStrength:I

.field private mLteAsuLevel:I

.field private mLteAsuMaxLevel:I

.field private mLteCqi:I

.field private mLteLevel:I

.field private mLteMaxLevel:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mOemRatType:I

.field private mUmtsLevel:I

.field private mUmtsMaxLevel:I

.field private mUseOem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "greatest"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 420
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v0, 0x7fffffff

    const/4 v3, -0x1

    const/16 v2, 0x63

    const/4 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 131
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 132
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 133
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 134
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 135
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 136
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 137
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 138
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 139
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 140
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 141
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 142
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 145
    iput v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 146
    const/16 v0, -0x6c

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 147
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 153
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 154
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 155
    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 156
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 157
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 162
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 164
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 165
    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 166
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 167
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 169
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 205
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 206
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 207
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 208
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 209
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 210
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 211
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 212
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 213
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 214
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 215
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 216
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 217
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 220
    const/16 v0, -0x6c

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 229
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 230
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 231
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 239
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 240
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 241
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 243
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 254
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 324
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 325
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 326
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 327
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 328
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 329
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 330
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 331
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 332
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 333
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 334
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 336
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 337
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 338
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 339
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    :goto_1
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 342
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 343
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 344
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 345
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 346
    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 347
    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 348
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 349
    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 352
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 353
    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 354
    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 355
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 356
    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 357
    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 358
    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 359
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_20

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 361
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 334
    goto/16 :goto_0

    :cond_22
    move v1, v2

    .line 339
    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 265
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 266
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "gsmFlag"

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 180
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 181
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 182
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 183
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 184
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 185
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 186
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 187
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 188
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 189
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 190
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 191
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 192
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 193
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1417
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 120
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 121
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 122
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1324
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1325
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1326
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1327
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1328
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1329
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1330
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1331
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1332
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1333
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1334
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1335
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1336
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1338
    const-string v0, "OemRatType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 1339
    const-string v0, "GsmOemSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 1340
    const-string v0, "GsmOemBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 1341
    const-string v0, "UseOem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 1344
    const-string v0, "GsmLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 1345
    const-string v0, "UmtsLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 1346
    const-string v0, "CdmaLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 1347
    const-string v0, "EvdoLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 1348
    const-string v0, "LteLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 1349
    const-string v0, "CdmaAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 1350
    const-string v0, "EvdoAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 1351
    const-string v0, "LteAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 1354
    const-string v0, "GsmMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 1355
    const-string v0, "UmtsMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 1356
    const-string v0, "CdmaMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 1357
    const-string v0, "EvdoMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 1358
    const-string v0, "LteMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 1359
    const-string v0, "CdmaAsuMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 1360
    const-string v0, "EvdoAsuMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 1361
    const-string v0, "LteAsuMaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 1363
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 273
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 274
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 275
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 276
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 277
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 278
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 279
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 280
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 281
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 282
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 283
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 284
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 285
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 287
    iget v0, p1, Landroid/telephony/SignalStrength;->mOemRatType:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 288
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 289
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 290
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mUseOem:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 293
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 294
    iget v0, p1, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 295
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 296
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 297
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 298
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 299
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 300
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 303
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 304
    iget v0, p1, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 305
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 306
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 307
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 308
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 309
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 310
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 312
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 1218
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1227
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1219
    :catch_0
    move-exception v1

    .line 1220
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1227
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mOemRatType:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1372
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1374
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1375
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1376
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1377
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1378
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1379
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1380
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1381
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1382
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1383
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1384
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1386
    const-string v0, "OemRatType"

    iget v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1387
    const-string v0, "GsmOemSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1388
    const-string v0, "GsmOemBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1389
    const-string v0, "UseOem"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1392
    const-string v0, "GsmLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    const-string v0, "UmtsLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1394
    const-string v0, "CdmaLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1395
    const-string v0, "EvdoLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1396
    const-string v0, "LteLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1397
    const-string v0, "CdmaAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1398
    const-string v0, "EvdoAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1399
    const-string v0, "LteAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1402
    const-string v0, "GsmMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1403
    const-string v0, "UmtsMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1404
    const-string v0, "CdmaMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1405
    const-string v0, "EvdoMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    const-string v0, "LteMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1407
    const-string v0, "CdmaAsuMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1408
    const-string v0, "EvdoAsuMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1409
    const-string v0, "LteAsuMaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1411
    return-void
.end method

.method public getAsuLevel()I
    .locals 2

    .prologue
    .line 826
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_1

    .line 827
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 848
    .local v0, asuLevel:I
    :goto_0
    return v0

    .line 830
    .end local v0           #asuLevel:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 835
    .end local v0           #asuLevel:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_3

    .line 836
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 837
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 839
    .end local v0           #asuLevel:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 842
    .end local v0           #asuLevel:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    return v0
.end method

.method public getCdmaAsuMaxLevel()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    return v0
.end method

.method public getCdmaMaxLevel()I
    .locals 1

    .prologue
    .line 1127
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    return v0
.end method

.method public getDbm()I
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 881
    .local v0, dBm:I
    :goto_0
    return v0

    .line 863
    .end local v0           #dBm:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 868
    .end local v0           #dBm:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_3

    .line 869
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 872
    .end local v0           #dBm:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 875
    .end local v0           #dBm:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    return v0
.end method

.method public getEvdoAsuMaxLevel()I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    return v0
.end method

.method public getEvdoMaxLevel()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 2

    .prologue
    .line 937
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 939
    .local v0, level:I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v1, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmOemSignalStrength()I

    move-result v1

    add-int/lit8 v1, v1, 0x71

    div-int/lit8 v0, v1, 0x2

    .line 944
    :cond_0
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 892
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 893
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_1

    move v0, v3

    .line 894
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_2

    .line 895
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 900
    .local v1, dBm:I
    :goto_1
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v3, :cond_0

    .line 902
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 906
    :cond_0
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_1
    move v0, v2

    .line 893
    goto :goto_0

    .line 897
    .restart local v0       #asu:I
    :cond_2
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    return v0
.end method

.method public getGsmMaxLevel()I
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    return v0
.end method

.method public getGsmOemBitErrorRate()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    return v0
.end method

.method public getGsmOemSignalStrength()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 746
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_2

    .line 747
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_1

    .line 748
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isUmts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getUmtsLevel()I

    move-result v0

    .line 773
    .local v0, level:I
    :goto_0
    return v0

    .line 751
    .end local v0           #level:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 754
    .end local v0           #level:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 760
    .end local v0           #level:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_4

    .line 761
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 762
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 764
    .end local v0           #level:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0

    .line 767
    .end local v0           #level:I
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1008
    const/16 v0, 0x63

    .line 1009
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1023
    .local v1, lteDbm:I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1026
    :goto_0
    return v0

    .line 1024
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteAsuMaxLevel()I
    .locals 1

    .prologue
    .line 1172
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    return v0
.end method

.method public getLteMaxLevel()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    return v0
.end method

.method public getLteRsrp()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 542
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    goto :goto_0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getMaxLevel()I
    .locals 2

    .prologue
    .line 784
    const/4 v0, 0x0

    .line 787
    .local v0, maxLevel:I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_3

    .line 788
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_2

    .line 789
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isUmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getUmtsMaxLevel()I

    move-result v0

    .line 813
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 815
    :cond_0
    return v0

    .line 792
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmMaxLevel()I

    move-result v0

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteMaxLevel()I

    move-result v0

    goto :goto_0

    .line 801
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_5

    .line 802
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 803
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoMaxLevel()I

    move-result v0

    goto :goto_0

    .line 805
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaMaxLevel()I

    move-result v0

    goto :goto_0

    .line 808
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteMaxLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getOemRatType()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    return v0
.end method

.method public getUmtsLevel()I
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    return v0
.end method

.method public getUmtsMaxLevel()I
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1188
    const/16 v0, 0x1f

    .line 1189
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    add-int/2addr v1, v4

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    add-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public isEvdo()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 634
    const-string v1, "gsm.network.type"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, radioString:Ljava/lang/String;
    const-string v1, "EvDo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "eHRPD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 639
    :cond_0
    const/4 v1, 0x1

    .line 641
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1180
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public isLte()Z
    .locals 3

    .prologue
    .line 616
    const-string v1, "gsm.network.type"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, radioString:Ljava/lang/String;
    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 621
    const/4 v1, 0x1

    .line 623
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUmts()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 652
    const-string v1, "gsm.network.type"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, radioString:Ljava/lang/String;
    const-string v1, "UMTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSDPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSUPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "HSPAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 658
    :cond_0
    const/4 v1, 0x1

    .line 660
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCdmaAsuLevel(I)V
    .locals 0
    .parameter "cdmaAsuLevel"

    .prologue
    .line 716
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 717
    return-void
.end method

.method public setCdmaAsuMaxLevel(I)V
    .locals 0
    .parameter "cdmaAsuMaxLevel"

    .prologue
    .line 1082
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    .line 1083
    return-void
.end method

.method public setCdmaLevel(I)V
    .locals 0
    .parameter "cdmaLevel"

    .prologue
    .line 689
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 690
    return-void
.end method

.method public setCdmaMaxLevel(I)V
    .locals 0
    .parameter "cdmaMaxLevel"

    .prologue
    .line 1055
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    .line 1056
    return-void
.end method

.method public setEvdoAsuLevel(I)V
    .locals 0
    .parameter "evdoAsuLevel"

    .prologue
    .line 725
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 726
    return-void
.end method

.method public setEvdoAsuMaxLevel(I)V
    .locals 0
    .parameter "evdoAsuMaxLevel"

    .prologue
    .line 1091
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    .line 1092
    return-void
.end method

.method public setEvdoLevel(I)V
    .locals 0
    .parameter "evdoLevel"

    .prologue
    .line 698
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 699
    return-void
.end method

.method public setEvdoMaxLevel(I)V
    .locals 0
    .parameter "evdoMaxLevel"

    .prologue
    .line 1064
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    .line 1065
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 474
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 475
    return-void
.end method

.method public setGsmLevel(I)V
    .locals 0
    .parameter "gsmLevel"

    .prologue
    .line 671
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 672
    return-void
.end method

.method public setGsmMaxLevel(I)V
    .locals 0
    .parameter "gsmMaxLevel"

    .prologue
    .line 1037
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    .line 1038
    return-void
.end method

.method public setLteAsuLevel(I)V
    .locals 0
    .parameter "lteAsuLevel"

    .prologue
    .line 734
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 735
    return-void
.end method

.method public setLteAsuMaxLevel(I)V
    .locals 0
    .parameter "lteAsuMaxLevel"

    .prologue
    .line 1100
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    .line 1101
    return-void
.end method

.method public setLteLevel(I)V
    .locals 0
    .parameter "lteLevel"

    .prologue
    .line 707
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 708
    return-void
.end method

.method public setLteMaxLevel(I)V
    .locals 0
    .parameter "lteMaxLevel"

    .prologue
    .line 1073
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    .line 1074
    return-void
.end method

.method public setOemSignalStrength(III)V
    .locals 1
    .parameter "ratType"
    .parameter "GsmOemSignalStrength"
    .parameter "GsmOemBitErrorRate"

    .prologue
    .line 1425
    iput p1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 1426
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 1427
    iput p3, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 1429
    return-void
.end method

.method public setUmtsLevel(I)V
    .locals 0
    .parameter "umtsLevel"

    .prologue
    .line 680
    iput p1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 681
    return-void
.end method

.method public setUmtsMaxLevel(I)V
    .locals 0
    .parameter "umtsMaxLevel"

    .prologue
    .line 1046
    iput p1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    .line 1047
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto/16 :goto_0
.end method

.method public useOem()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    return v0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 444
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 450
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 451
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 453
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 456
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 457
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 458
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 459
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 463
    return-void

    :cond_4
    move v0, v1

    .line 444
    goto :goto_0

    :cond_5
    move v0, v2

    .line 447
    goto :goto_1

    .line 448
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 451
    goto :goto_3

    :cond_8
    move v0, v4

    .line 457
    goto :goto_4

    :cond_9
    move v0, v4

    .line 458
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteAsuMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    return-void

    :cond_0
    move v0, v2

    .line 379
    goto :goto_0

    :cond_1
    move v1, v2

    .line 384
    goto :goto_1
.end method
