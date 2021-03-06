.class public Lcom/android/internal/atfwd/AtCmd;
.super Ljava/lang/Object;
.source "AtCmd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ATCMD_OPCODE_NA_EQ_AR:I = 0xb

.field public static final ATCMD_OPCODE_NA_EQ_QU:I = 0x7

.field public static final ATCMD_OPCODE_NA_QU:I = 0x5

.field public static final AT_ERR_INCORRECT_PARAMS:I = 0x32

.field public static final AT_ERR_INCORRECT_PASSWORD:I = 0x10

.field public static final AT_ERR_INVALID_CHARS:I = 0x19

.field public static final AT_ERR_NOT_FOUND:I = 0x16

.field public static final AT_ERR_NO_CONN_TO_PHONE:I = 0x1

.field public static final AT_ERR_OP_NOT_ALLOW:I = 0x3

.field public static final AT_ERR_OP_NOT_SUPP:I = 0x4

.field public static final AT_ERR_PHONE_FAILURE:I = 0x0

.field public static final AT_ERR_UNKNOWN:I = 0x64

.field public static final AT_OPCODE_AR:I = 0x8

.field public static final AT_OPCODE_EQ:I = 0x2

.field public static final AT_OPCODE_NA:I = 0x1

.field public static final AT_OPCODE_QU:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/atfwd/AtCmd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;

.field private mOpcode:I

.field private mTokens:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/atfwd/AtCmd$1;

    invoke-direct {v0}, Lcom/android/internal/atfwd/AtCmd$1;-><init>()V

    sput-object v0, Lcom/android/internal/atfwd/AtCmd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "opcode"
    .parameter "name"
    .parameter "tokens"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/atfwd/AtCmd;->init(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, opcode:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .local v2, tokens:[Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/atfwd/AtCmd;->init(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/atfwd/AtCmd$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private init(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "opcode"
    .parameter "name"
    .parameter "tokens"

    .prologue
    iput p1, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    iput-object p2, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAtCmdErrStr(I)Ljava/lang/String;
    .locals 1
    .parameter "errCode"

    .prologue
    const-string v0, "+CME ERROR: 100"

    .local v0, errStrResult:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-object v0

    :sswitch_1
    const-string v0, "+CME ERROR: 0"

    goto :goto_0

    :sswitch_2
    const-string v0, "+CME ERROR: 1"

    goto :goto_0

    :sswitch_3
    const-string v0, "+CME ERROR: 3"

    goto :goto_0

    :sswitch_4
    const-string v0, "+CME ERROR: 4"

    goto :goto_0

    :sswitch_5
    const-string v0, "+CME ERROR: 16"

    goto :goto_0

    :sswitch_6
    const-string v0, "+CME ERROR: 22"

    goto :goto_0

    :sswitch_7
    const-string v0, "+CME ERROR: 25"

    goto :goto_0

    :sswitch_8
    const-string v0, "+CME ERROR: 50"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x10 -> :sswitch_5
        0x16 -> :sswitch_6
        0x19 -> :sswitch_7
        0x32 -> :sswitch_8
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    return v0
.end method

.method public getTokens()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "mName"

    .prologue
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOpcode(I)V
    .locals 0
    .parameter "mOpcode"

    .prologue
    iput p1, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    return-void
.end method

.method public setTokens([Ljava/lang/String;)V
    .locals 0
    .parameter "mTokens"

    .prologue
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AtCmd { opcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTokens = {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, ret:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, token:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #token:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
