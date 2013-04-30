.class public Lcom/motorola/camera/Util$ReturnResult;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReturnResult"
.end annotation


# instance fields
.field private result:I

.field private sResultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 845
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 846
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Util$ReturnResult;->sResultIntent:Landroid/content/Intent;

    .line 847
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/Util$ReturnResult;->result:I

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/camera/Util$ReturnResult;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/motorola/camera/Util$ReturnResult;->setResult(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/camera/Util$ReturnResult;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/motorola/camera/Util$ReturnResult;->setResultData(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$302(Lcom/motorola/camera/Util$ReturnResult;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 845
    iput-object p1, p0, Lcom/motorola/camera/Util$ReturnResult;->sResultIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$402(Lcom/motorola/camera/Util$ReturnResult;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 845
    iput p1, p0, Lcom/motorola/camera/Util$ReturnResult;->result:I

    return p1
.end method

.method private setResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 855
    iput p1, p0, Lcom/motorola/camera/Util$ReturnResult;->result:I

    .line 856
    return-void
.end method

.method private setResultData(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/motorola/camera/Util$ReturnResult;->sResultIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 852
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/motorola/camera/Util$ReturnResult;->result:I

    return v0
.end method

.method public getResultIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/motorola/camera/Util$ReturnResult;->sResultIntent:Landroid/content/Intent;

    return-object v0
.end method
