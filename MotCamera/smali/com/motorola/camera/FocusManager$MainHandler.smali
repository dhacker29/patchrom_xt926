.class Lcom/motorola/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/motorola/camera/FocusManager$MainHandler;-><init>(Lcom/motorola/camera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 156
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "FocusManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg handler:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$300(Lcom/motorola/camera/FocusManager;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$400(Lcom/motorola/camera/FocusManager;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 160
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->cancelAutoFocus()V
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$500(Lcom/motorola/camera/FocusManager;)V

    .line 161
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->startFaceDetect()V
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$600(Lcom/motorola/camera/FocusManager;)V

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$400(Lcom/motorola/camera/FocusManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 165
    .local v4, result:Ljava/lang/Boolean;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v5, Lcom/motorola/camera/FocusManager;->mFocusIconUpdateTag:Ljava/lang/String;

    sget-object v7, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v5, Lcom/motorola/camera/FocusManager;->mFocusIconResultTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/Notifier$TYPE;->FOCUS_ICON:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v5, v7, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 171
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v5, Lcom/motorola/camera/FocusManager;->mFocusIconUpdateTag:Ljava/lang/String;

    sget-object v7, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_VISIBILITY_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v5, Lcom/motorola/camera/FocusManager;->mFocusIconUpdateVisibilityTag:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->FOCUS_ICON:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v5, v6, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 177
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v5, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v5, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateVisibilityTag:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v5, v6, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #result:Ljava/lang/Boolean;
    :pswitch_1
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 186
    const-string v5, "FocusManager"

    const-string v6, "auto focus timed out"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->TAP_FOCUS_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 191
    :cond_4
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 193
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->cancelAutoFocus()V
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$500(Lcom/motorola/camera/FocusManager;)V

    .line 194
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->capture()V
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$700(Lcom/motorola/camera/FocusManager;)V

    goto/16 :goto_0

    .line 197
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 198
    .local v2, focusState:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #calls: Lcom/motorola/camera/FocusManager;->autoFocusComplete(Z)V
    invoke-static {v5, v6}, Lcom/motorola/camera/FocusManager;->access$800(Lcom/motorola/camera/FocusManager;Z)V

    goto/16 :goto_0

    .line 202
    .end local v2           #focusState:Ljava/lang/Boolean;
    :pswitch_3
    iget-object v7, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mPreviewRunning:Z
    invoke-static {v7}, Lcom/motorola/camera/FocusManager;->access$900(Lcom/motorola/camera/FocusManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 204
    .local v3, lowlight:I
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v7

    if-ne v3, v5, :cond_5

    :goto_1
    invoke-virtual {v7, v5}, Lcom/motorola/camera/AppSettings;->setZSL(Z)V

    .line 208
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;
    invoke-static {v5}, Lcom/motorola/camera/FocusManager;->access$1000(Lcom/motorola/camera/FocusManager;)Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v5, v6, :cond_1

    .line 209
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    goto/16 :goto_0

    :cond_5
    move v5, v6

    .line 204
    goto :goto_1

    .line 214
    .end local v3           #lowlight:I
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Landroid/hardware/Camera$Face;

    move-object v1, v5

    check-cast v1, [Landroid/hardware/Camera$Face;

    .line 215
    .local v1, faces:[Landroid/hardware/Camera$Face;
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUpdateFaceUI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #getter for: Lcom/motorola/camera/FocusManager;->mUpdateFaceUI:Z
    invoke-static {v7}, Lcom/motorola/camera/FocusManager;->access$1100(Lcom/motorola/camera/FocusManager;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_6
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    #calls: Lcom/motorola/camera/FocusManager;->updateFaceUI([Landroid/hardware/Camera$Face;)V
    invoke-static {v5, v1}, Lcom/motorola/camera/FocusManager;->access$1200(Lcom/motorola/camera/FocusManager;[Landroid/hardware/Camera$Face;)V

    .line 217
    iget-object v5, p0, Lcom/motorola/camera/FocusManager$MainHandler;->this$0:Lcom/motorola/camera/FocusManager;

    array-length v6, v1

    #setter for: Lcom/motorola/camera/FocusManager;->mNumFaces:I
    invoke-static {v5, v6}, Lcom/motorola/camera/FocusManager;->access$1302(Lcom/motorola/camera/FocusManager;I)I

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
