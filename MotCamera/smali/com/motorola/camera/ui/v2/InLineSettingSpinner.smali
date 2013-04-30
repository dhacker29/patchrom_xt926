.class public Lcom/motorola/camera/ui/v2/InLineSettingSpinner;
.super Lcom/motorola/camera/ui/v2/InLineSettingItem;
.source "InLineSettingSpinner.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;


# instance fields
.field private mListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

.field private mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

.field private mSubSummary:Landroid/widget/TextView;

.field private mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/InLineSettingSpinner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->showDialog()V

    return-void
.end method

.method private initializeDialog()V
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 44
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 46
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;

    .line 48
    .local v0, dialog:Lcom/motorola/camera/ui/v2/DialogSettingPopup;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->initialize(Lcom/motorola/camera/ListPreference;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;)V

    .line 50
    iput-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 51
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->setPressed(Z)V

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->initializeDialog()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;->onNewPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->requestFocus()Z

    .line 59
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->onFinishInflate()V

    .line 64
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mSummary:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mSubSummary:Landroid/widget/TextView;

    .line 67
    new-instance v1, Lcom/motorola/camera/ui/v2/InLineSettingSpinner$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner$1;-><init>(Lcom/motorola/camera/ui/v2/InLineSettingSpinner;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onSettingChanged(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->changeIndex(I)Z

    .line 79
    return-void
.end method

.method public rotateChild(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->setOrientation(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public setPopupAddedListener(Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;)V
    .locals 0
    .parameter "popupListener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    .line 90
    return-void
.end method

.method protected setTitle(Lcom/motorola/camera/ListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setTitle(Lcom/motorola/camera/ListPreference;)V

    .line 29
    return-void
.end method

.method protected updateView()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mSubSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mSubSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->mSubSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
