.class Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound$1;
.super Ljava/lang/Object;
.source "PanoProgressUIComponent.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->stop()V

    .line 305
    return-void
.end method
