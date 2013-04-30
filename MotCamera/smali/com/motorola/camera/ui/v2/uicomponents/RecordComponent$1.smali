.class Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent$1;
.super Landroid/os/Handler;
.source "RecordComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    #calls: Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->updateTime()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->access$200(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordDiff:J
    invoke-static {v2}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->access$100(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
