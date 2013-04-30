.class public Lcom/motorola/camera/ui/v2/CaptureButton;
.super Landroid/widget/ImageButton;
.source "CaptureButton.java"


# static fields
.field private static final MODE:[I


# instance fields
.field private mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/motorola/camera/ui/v2/CaptureButton;->MODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 72
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 74
    .local v0, drawableState:[I
    return-object v0
.end method

.method public setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/CaptureButton;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 89
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/CaptureButton;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const v0, 0x7f020022

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/CaptureButton;->setImageResource(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const v0, 0x7f020020

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/CaptureButton;->setImageResource(I)V

    goto :goto_0
.end method
