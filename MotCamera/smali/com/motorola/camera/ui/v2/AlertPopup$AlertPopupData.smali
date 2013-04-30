.class public Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
.super Ljava/lang/Object;
.source "AlertPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/AlertPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertPopupData"
.end annotation


# instance fields
.field public message:I

.field private negativeButtonText:I

.field public negativeCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

.field private positiveButtonText:I

.field private positiveCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

.field public title:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->message:I

    .line 132
    iput v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->title:I

    .line 133
    iput v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 134
    iput v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->negativeButtonText:I

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveButtonText:I

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->negativeButtonText:I

    return v0
.end method


# virtual methods
.method public setNegativeButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    .locals 0
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 140
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    .line 141
    iput p1, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 142
    return-void
.end method

.method public setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    .locals 0
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 136
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    .line 137
    iput p1, p0, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 138
    return-void
.end method
