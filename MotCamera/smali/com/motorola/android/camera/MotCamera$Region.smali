.class public Lcom/motorola/android/camera/MotCamera$Region;
.super Ljava/lang/Object;
.source "MotCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/MotCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Region"
.end annotation


# instance fields
.field public height:I

.field public left:I

.field final synthetic this$0:Lcom/motorola/android/camera/MotCamera;

.field public top:I

.field public width:I


# direct methods
.method public constructor <init>(Lcom/motorola/android/camera/MotCamera;IIII)V
    .locals 0
    .parameter
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/motorola/android/camera/MotCamera$Region;->this$0:Lcom/motorola/android/camera/MotCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/motorola/android/camera/MotCamera$Region;->left:I

    .line 118
    iput p3, p0, Lcom/motorola/android/camera/MotCamera$Region;->top:I

    .line 119
    iput p4, p0, Lcom/motorola/android/camera/MotCamera$Region;->width:I

    .line 120
    iput p5, p0, Lcom/motorola/android/camera/MotCamera$Region;->height:I

    .line 121
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/motorola/android/camera/MotCamera$Region;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/camera/MotCamera$Region;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/camera/MotCamera$Region;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/camera/MotCamera$Region;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
