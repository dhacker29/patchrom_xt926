.class public Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "RecordComponent.java"


# static fields
.field private static final RECORD_UPDATE:I


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mRecordDiff:J

.field private mRecordTime:J

.field private mRecordTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 2
    .parameter "view"
    .parameter "parent"

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 19
    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTime:J

    .line 20
    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordDiff:J

    .line 22
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent$1;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mMainHandler:Landroid/os/Handler;

    .line 40
    const v0, 0x7f08003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTimeView:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->updateTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordDiff:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateTime()V
    .locals 8

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTime:J

    sub-long v0, v4, v6

    .line 74
    .local v0, delta:J
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v5, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->getTimeBetweenTimeLapseCaptureMS()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->getCurrentfps()I

    move-result v6

    invoke-static {v0, v1, v4, v5, v6}, Lcom/motorola/camera/Util;->getTimeLapseVideoLength(JDI)J

    move-result-wide v2

    .line 77
    .local v2, timeLapseLength:J
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTimeView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/motorola/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v2           #timeLapseLength:J
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTimeView:Landroid/widget/TextView;

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    invoke-static {v5, v6}, Lcom/motorola/camera/Util;->secondToTimeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->destroy()V

    .line 95
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTimeView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public postCapture()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    return-void
.end method

.method public preCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    const-wide/16 v0, 0x3e8

    .line 59
    .local v0, timeUpdateInterval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTime:J

    .line 60
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isTimeLapseMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordDiff:J

    .line 65
    :goto_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->updateTime()V

    .line 66
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mMainHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordDiff:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getTimeBetweenTimeLapseCaptureMS()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordDiff:J

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->mRecordTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    return-void
.end method
