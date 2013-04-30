.class public Lcom/motorola/camera/CameraRoll$CameraData;
.super Ljava/lang/Object;
.source "CameraRoll.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/CameraRoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraData"
.end annotation


# instance fields
.field private _id:J

.field private dataType:I

.field private dateTaken:J

.field private fileName:Ljava/lang/String;

.field private orientation:I

.field private uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 463
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 2
    .parameter "uri"
    .parameter "fileName"
    .parameter "type"

    .prologue
    .line 465
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p2, p0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    .line 467
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->uri:Landroid/net/Uri;

    .line 468
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->_id:J

    .line 469
    iput p3, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/CameraRoll$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/motorola/camera/CameraRoll$CameraData;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/camera/CameraRoll$CameraData;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/motorola/camera/CameraRoll$CameraData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/motorola/camera/CameraRoll$CameraData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->_id:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/motorola/camera/CameraRoll$CameraData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    iput p1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I

    return p1
.end method

.method static synthetic access$1502(Lcom/motorola/camera/CameraRoll$CameraData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/motorola/camera/CameraRoll$CameraData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    iput p1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->orientation:I

    return p1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Lcom/motorola/camera/CameraRoll$CameraData;

    invoke-direct {v0}, Lcom/motorola/camera/CameraRoll$CameraData;-><init>()V

    .line 516
    .local v0, data:Lcom/motorola/camera/CameraRoll$CameraData;
    iget v1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I

    iput v1, v0, Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I

    .line 517
    iget-wide v1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->_id:J

    iput-wide v1, v0, Lcom/motorola/camera/CameraRoll$CameraData;->_id:J

    .line 518
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    .line 519
    iget v1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I

    iput v1, v0, Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I

    .line 520
    iget v1, p0, Lcom/motorola/camera/CameraRoll$CameraData;->orientation:I

    iput v1, v0, Lcom/motorola/camera/CameraRoll$CameraData;->orientation:I

    .line 521
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 501
    instance-of v0, p1, Lcom/motorola/camera/CameraRoll$CameraData;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    check-cast p1, Lcom/motorola/camera/CameraRoll$CameraData;

    .end local p1
    iget-object v1, p1, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 504
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataType()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dataType:I

    return v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 477
    iget-wide v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->_id:J

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->orientation:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
