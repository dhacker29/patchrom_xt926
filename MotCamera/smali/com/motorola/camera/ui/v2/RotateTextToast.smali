.class public Lcom/motorola/camera/ui/v2/RotateTextToast;
.super Ljava/lang/Object;
.source "RotateTextToast.java"


# static fields
.field private static final TOAST_DURATION:I = 0x9c4


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLayoutRoot:Landroid/view/ViewGroup;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mText:Landroid/widget/TextView;

.field mToast:Lcom/motorola/camera/ui/v2/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;II)V
    .locals 1
    .parameter "activity"
    .parameter "group"
    .parameter "textResourceId"
    .parameter "orientation"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/motorola/camera/ui/v2/RotateTextToast$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/v2/RotateTextToast$1;-><init>(Lcom/motorola/camera/ui/v2/RotateTextToast;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/camera/ui/v2/RotateTextToast;->init(Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;I)V
    .locals 1
    .parameter "activity"
    .parameter "group"
    .parameter "text"
    .parameter "orientation"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/motorola/camera/ui/v2/RotateTextToast$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/v2/RotateTextToast$1;-><init>(Lcom/motorola/camera/ui/v2/RotateTextToast;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    .line 43
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/camera/ui/v2/RotateTextToast;->init(Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method private init(Landroid/app/Activity;Landroid/view/ViewGroup;I)V
    .locals 5
    .parameter "activity"
    .parameter "group"
    .parameter "orientation"

    .prologue
    .line 48
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03001a

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 53
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/v2/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mText:Landroid/widget/TextView;

    .line 54
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v2, p3}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 55
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
