.class public Lcom/motorola/android/camera/Panorama$Size;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/motorola/android/camera/Panorama;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/motorola/android/camera/Panorama;II)V
    .locals 0
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama$Size;->this$0:Lcom/motorola/android/camera/Panorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput p2, p0, Lcom/motorola/android/camera/Panorama$Size;->width:I

    .line 550
    iput p3, p0, Lcom/motorola/android/camera/Panorama$Size;->height:I

    .line 551
    return-void
.end method
