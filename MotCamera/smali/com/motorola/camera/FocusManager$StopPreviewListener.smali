.class Lcom/motorola/camera/FocusManager$StopPreviewListener;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/motorola/camera/Device$StopPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopPreviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/motorola/camera/FocusManager$StopPreviewListener;->this$0:Lcom/motorola/camera/FocusManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1196
    invoke-direct {p0, p1}, Lcom/motorola/camera/FocusManager$StopPreviewListener;-><init>(Lcom/motorola/camera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public onStopPreviewCalled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1202
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "onStopPreviewCalled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/FocusManager$StopPreviewListener;->this$0:Lcom/motorola/camera/FocusManager;

    #setter for: Lcom/motorola/camera/FocusManager;->mPreviewRunning:Z
    invoke-static {v0, v2}, Lcom/motorola/camera/FocusManager;->access$902(Lcom/motorola/camera/FocusManager;Z)Z

    .line 1204
    iget-object v0, p0, Lcom/motorola/camera/FocusManager$StopPreviewListener;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->resetFocusManager()V
    invoke-static {v0}, Lcom/motorola/camera/FocusManager;->access$1800(Lcom/motorola/camera/FocusManager;)V

    .line 1205
    iget-object v0, p0, Lcom/motorola/camera/FocusManager$StopPreviewListener;->this$0:Lcom/motorola/camera/FocusManager;

    #setter for: Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z
    invoke-static {v0, v2}, Lcom/motorola/camera/FocusManager;->access$402(Lcom/motorola/camera/FocusManager;Z)Z

    .line 1206
    iget-object v0, p0, Lcom/motorola/camera/FocusManager$StopPreviewListener;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->stopFaceDetect()V
    invoke-static {v0}, Lcom/motorola/camera/FocusManager;->access$1900(Lcom/motorola/camera/FocusManager;)V

    .line 1207
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    const-string v1, "onStopPreviewCalled exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_1
    return-void
.end method
