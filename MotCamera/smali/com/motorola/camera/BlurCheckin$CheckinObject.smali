.class abstract Lcom/motorola/camera/BlurCheckin$CheckinObject;
.super Ljava/lang/Object;
.source "BlurCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckinObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/BlurCheckin;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$CheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/motorola/camera/BlurCheckin$CheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;)V

    return-void
.end method


# virtual methods
.method public abstract checkinValues(Ljava/lang/String;)V
.end method

.method public abstract initializeValues()V
.end method

.method public abstract loadValues()V
.end method

.method public abstract printValues()V
.end method
