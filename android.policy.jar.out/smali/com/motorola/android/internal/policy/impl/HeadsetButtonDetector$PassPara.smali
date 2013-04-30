.class Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
.super Ljava/lang/Object;
.source "HeadsetButtonDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassPara"
.end annotation


# instance fields
.field private ClickCount:I

.field private KeyDownFlags:I

.field private KeyUpFlags:I

.field private ScanCode:I

.field private SendIntent:Z

.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;IZIII)V
    .locals 0
    .parameter
    .parameter "pClickCount"
    .parameter "pSendIntent"
    .parameter "pScanCode"
    .parameter "pKeyDownFlags"
    .parameter "pKeyUpFlags"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I

    .line 76
    iput-boolean p3, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->SendIntent:Z

    .line 77
    iput p4, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ScanCode:I

    .line 78
    iput p5, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyDownFlags:I

    .line 79
    iput p6, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyUpFlags:I

    .line 80
    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyDownFlags:I

    return v0
.end method

.method static synthetic access$502(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyDownFlags:I

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyUpFlags:I

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyUpFlags:I

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ScanCode:I

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ScanCode:I

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->SendIntent:Z

    return v0
.end method

.method static synthetic access$802(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->SendIntent:Z

    return p1
.end method
