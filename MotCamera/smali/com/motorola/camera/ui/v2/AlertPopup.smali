.class public Lcom/motorola/camera/ui/v2/AlertPopup;
.super Lcom/motorola/camera/ui/v2/Popup;
.source "AlertPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/AlertPopup$Builder;,
        Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;,
        Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    }
.end annotation


# instance fields
.field private mNegativeClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

.field private mPositiveClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/Popup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AlertPopup;->setFocusable(Z)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/AlertPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->initializeParent()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/camera/ui/v2/AlertPopup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/AlertPopup;->setMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/camera/ui/v2/AlertPopup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/AlertPopup;->setTitle(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/camera/ui/v2/AlertPopup;ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AlertPopup;->setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/camera/ui/v2/AlertPopup;ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AlertPopup;->setNegativeButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    return-void
.end method

.method private dismiss()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->dismissPopup()V

    .line 95
    return-void
.end method

.method private initializeParent()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    .local v0, parent:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 82
    return-void
.end method

.method private setMessage(I)V
    .locals 2
    .parameter "message"

    .prologue
    .line 55
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, messageView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    return-void
.end method

.method private setNegativeButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    .locals 2
    .parameter "negative"
    .parameter "negativeClick"

    .prologue
    .line 85
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    .line 90
    return-void
.end method

.method private setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    .locals 2
    .parameter "positive"
    .parameter "positiveClick"

    .prologue
    .line 68
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mPositiveClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    .line 73
    return-void
.end method

.method private setTitle(I)V
    .locals 3
    .parameter "title"

    .prologue
    .line 61
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/AlertPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, messageView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/AlertPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/v2/AlertPopup;)V

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->dismiss()V

    .line 42
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 114
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->cancel()V

    .line 118
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 101
    :sswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mPositiveClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mPositiveClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/v2/AlertPopup;)V

    .line 102
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->dismiss()V

    goto :goto_0

    .line 107
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/v2/AlertPopup;)V

    .line 108
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->dismiss()V

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f08000e -> :sswitch_2
        0x7f08000f -> :sswitch_1
    .end sparse-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->cancel()V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public showPopup(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/Popup;->showPopup(I)V

    .line 51
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AlertPopup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    return-void
.end method
