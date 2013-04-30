.class Lcom/motorola/camera/FocusManager$FocusResultCallback;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/motorola/camera/Device$FocusResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusResultCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/motorola/camera/FocusManager$FocusResultCallback;->this$0:Lcom/motorola/camera/FocusManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lcom/motorola/camera/FocusManager$FocusResultCallback;-><init>(Lcom/motorola/camera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusComplete(Z)V
    .locals 5
    .parameter "focusState"

    .prologue
    const/4 v4, 0x0

    .line 1175
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TAP_FOCUS_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 1177
    :cond_0
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 1179
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto focus result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/FocusManager$FocusResultCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;
    invoke-static {v3}, Lcom/motorola/camera/FocusManager;->access$1000(Lcom/motorola/camera/FocusManager;)Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FocusResultCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mCAFFailed:Z
    invoke-static {v1}, Lcom/motorola/camera/FocusManager;->access$1500(Lcom/motorola/camera/FocusManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1182
    if-nez p1, :cond_3

    .line 1183
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FocusResultCallback;->this$0:Lcom/motorola/camera/FocusManager;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/camera/FocusManager;->mFocusFailed:Z
    invoke-static {v1, v2}, Lcom/motorola/camera/FocusManager;->access$1602(Lcom/motorola/camera/FocusManager;Z)Z

    .line 1189
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FocusResultCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/FocusManager;->access$1700(Lcom/motorola/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1190
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FocusResultCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/FocusManager;->access$1700(Lcom/motorola/camera/FocusManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1191
    return-void

    .line 1187
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/FocusManager$FocusResultCallback;->this$0:Lcom/motorola/camera/FocusManager;

    #setter for: Lcom/motorola/camera/FocusManager;->mFocusFailed:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/FocusManager;->access$1602(Lcom/motorola/camera/FocusManager;Z)Z

    goto :goto_0
.end method
