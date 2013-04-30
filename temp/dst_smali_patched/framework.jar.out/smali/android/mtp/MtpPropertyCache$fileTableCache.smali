.class Landroid/mtp/MtpPropertyCache$fileTableCache;
.super Ljava/lang/Object;
.source "MtpPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "fileTableCache"
.end annotation


# instance fields
.field mFormat:I

.field mParent:I

.field mPosition:I

.field mSize:J

.field final synthetic this$0:Landroid/mtp/MtpPropertyCache;


# direct methods
.method constructor <init>(Landroid/mtp/MtpPropertyCache;IJII)V
    .locals 0
    .parameter
    .parameter "format"
    .parameter "size"
    .parameter "parent"
    .parameter "pos"

    .prologue
    iput-object p1, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->this$0:Landroid/mtp/MtpPropertyCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    iput-wide p3, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mSize:J

    iput p6, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    iput p5, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mParent:I

    return-void
.end method
