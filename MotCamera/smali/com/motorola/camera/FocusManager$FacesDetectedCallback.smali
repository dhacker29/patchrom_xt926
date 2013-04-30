.class Lcom/motorola/camera/FocusManager$FacesDetectedCallback;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/motorola/camera/Device$FacesDetectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacesDetectedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;->this$0:Lcom/motorola/camera/FocusManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;-><init>(Lcom/motorola/camera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public onFacesDetected([Landroid/hardware/Camera$Face;)V
    .locals 5
    .parameter "faces"

    .prologue
    const/4 v4, 0x0

    .line 1254
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face detection callback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mUpdateFaceUI:Z
    invoke-static {v3}, Lcom/motorola/camera/FocusManager;->access$1100(Lcom/motorola/camera/FocusManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mUpdateFaceUI:Z
    invoke-static {v1}, Lcom/motorola/camera/FocusManager;->access$1100(Lcom/motorola/camera/FocusManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/FocusManager;->access$1700(Lcom/motorola/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1257
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/FocusManager;->access$1700(Lcom/motorola/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1259
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method
