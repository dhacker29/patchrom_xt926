.class Lcom/motorola/camera/Device$FaceDetectionListener;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/Device;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/camera/Device$FaceDetectionListener;->this$0:Lcom/motorola/camera/Device;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device$FaceDetectionListener;-><init>(Lcom/motorola/camera/Device;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/camera/Device$FaceDetectionListener;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;
    invoke-static {v0}, Lcom/motorola/camera/Device;->access$300(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$FacesDetectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/motorola/camera/Device$FaceDetectionListener;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;
    invoke-static {v0}, Lcom/motorola/camera/Device;->access$300(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$FacesDetectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/motorola/camera/Device$FacesDetectedListener;->onFacesDetected([Landroid/hardware/Camera$Face;)V

    .line 133
    :cond_0
    return-void
.end method
