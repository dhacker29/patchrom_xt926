.class public Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "StorageProgressBarComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mChunksRemaining:I

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mProgressStatus:I

.field private mStorageProgressContainerRotate:Lcom/motorola/camera/ui/v2/RotateLayout;

.field private mTextView:Landroid/widget/TextView;

.field private volatile mTotalChunks:I

.field private mView:Lcom/motorola/camera/ui/v2/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 1
    .parameter "root"
    .parameter "parent"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 27
    const-string v0, "StorageProgressBarComponent"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressStatus:I

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mView:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 81
    const v0, 0x7f080056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressBar:Landroid/widget/ProgressBar;

    .line 82
    const v0, 0x7f080055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mStorageProgressContainerRotate:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 84
    const v0, 0x7f080057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTextView:Landroid/widget/TextView;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)Lcom/motorola/camera/ui/v2/RotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mView:Lcom/motorola/camera/ui/v2/RotateLayout;

    return-object v0
.end method


# virtual methods
.method public enableClick()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 5
    .parameter "type"
    .parameter "object"

    .prologue
    .line 40
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 41
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/modes/AbstractMode;->mFileStoreTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, mChunksRemaining:I
    iget v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTotalChunks:I

    if-le v1, v2, :cond_0

    .line 44
    iput v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTotalChunks:I

    .line 47
    :cond_0
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "StorageProgressBarComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTotalChunks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTotalChunks:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "StorageProgressBarComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mChunksRemaining: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    iget v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTotalChunks:I

    if-eqz v2, :cond_3

    .line 51
    iget v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTotalChunks:I

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTotalChunks:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressStatus:I

    .line 52
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_3
    if-nez v1, :cond_4

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mTotalChunks:I

    .line 69
    :cond_4
    return-void
.end method

.method public registerListeners()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->STORE_PROGRESS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 90
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->rotate(I)V

    .line 106
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mStorageProgressContainerRotate:Lcom/motorola/camera/ui/v2/RotateLayout;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mStorageProgressContainerRotate:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public unregisterListeners()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->STORE_PROGRESS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 95
    return-void
.end method
