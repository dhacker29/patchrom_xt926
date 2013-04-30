.class Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;
.super Ljava/lang/Object;
.source "GsmOemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_CMD_QUERY_LEN:I

.field final SIZE_OF_INT:I

.field private b:[B

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x4

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->this$0:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->SIZE_OF_INT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->OEM_CMD_QUERY_LEN:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    return-void
.end method

.method private readIntLittleEndian(Ljava/io/DataInputStream;)J
    .locals 4
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "in OemCommands.readIntLittleEndian(DataInputStream)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeIntLittleEndian(Ljava/io/DataOutputStream;I)V
    .locals 1
    .parameter "dos"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method private writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .parameter "dos"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    return-void
.end method
