.class Lcom/motorola/android/camera/MotCamera$MotEventHandler;
.super Ljava/lang/Object;
.source "MotCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ExtEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/MotCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotEventHandler"
.end annotation


# instance fields
.field private mMotCamera:Lcom/motorola/android/camera/MotCamera;

.field final synthetic this$0:Lcom/motorola/android/camera/MotCamera;


# direct methods
.method public constructor <init>(Lcom/motorola/android/camera/MotCamera;Lcom/motorola/android/camera/MotCamera;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/motorola/android/camera/MotCamera$MotEventHandler;->this$0:Lcom/motorola/android/camera/MotCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/motorola/android/camera/MotCamera$MotEventHandler;->mMotCamera:Lcom/motorola/android/camera/MotCamera;

    .line 76
    return-void
.end method


# virtual methods
.method public handleEvent(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/camera/MotCamera$MotEventHandler;->this$0:Lcom/motorola/android/camera/MotCamera;

    #getter for: Lcom/motorola/android/camera/MotCamera;->mFaceDetectCallback:Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/MotCamera;->access$000(Lcom/motorola/android/camera/MotCamera;)Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/motorola/android/camera/MotCamera$MotEventHandler;->this$0:Lcom/motorola/android/camera/MotCamera;

    #getter for: Lcom/motorola/android/camera/MotCamera;->mFaceDetectCallback:Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/MotCamera;->access$000(Lcom/motorola/android/camera/MotCamera;)Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/camera/MotCamera$MotEventHandler;->mMotCamera:Lcom/motorola/android/camera/MotCamera;

    invoke-interface {v0, v1}, Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;->onFaceDetectUpdate(Lcom/motorola/android/camera/MotCamera;)V

    .line 85
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x8000
        :pswitch_0
    .end packed-switch
.end method
