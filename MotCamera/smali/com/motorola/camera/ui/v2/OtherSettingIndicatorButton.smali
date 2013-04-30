.class public Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;
.super Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
.source "OtherSettingIndicatorButton.java"

# interfaces
.implements Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;
.implements Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

.field private mPrefKeys:[Ljava/lang/String;

.field private mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "preferenceGroup"
    .parameter "prefKeys"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v0, "OtherSettingIndicatorButton"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->TAG:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->setImageResource(I)V

    .line 32
    iput-object p3, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 33
    iput-object p4, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string v0, "OtherSettingIndicatorButton"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected initializeFeedbackPopup()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 64
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f030017

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    .line 66
    .local v1, popup:Lcom/motorola/camera/ui/v2/OtherSettingsPopup;
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;)V

    .line 67
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->setNewPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;)V

    .line 68
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->initialize(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public onPreferenceChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->reloadPreference()V

    .line 78
    :cond_0
    return-void
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 0
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    .line 95
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;->onRestorePreferencesClicked()V

    .line 90
    :cond_0
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "index"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->onPopupDismissRequested(Z)Z

    .line 84
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;->onSettingChanged(Ljava/lang/String;I)V

    .line 85
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->initializePopup()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->overrideSettings([Ljava/lang/String;)V

    .line 56
    :cond_1
    return-void
.end method

.method public setPreference(ILcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 3
    .parameter "resId"
    .parameter "preferenceGroup"
    .parameter "prefKeys"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->setImageResource(I)V

    .line 38
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 39
    iput-object p3, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->initialize(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    .line 21
    return-void
.end method
