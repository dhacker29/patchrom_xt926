.class public Lcom/motorola/camera/ui/v2/MenuIndicatorButton;
.super Lcom/motorola/camera/ui/v2/IndicatorButton;
.source "MenuIndicatorButton.java"


# instance fields
.field private mSubPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/IndicatorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/IconListPreference;)V
    .locals 0
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/IndicatorButton;-><init>(Landroid/content/Context;Lcom/motorola/camera/IconListPreference;)V

    .line 29
    return-void
.end method

.method private getPreference(Ljava/lang/String;)Lcom/motorola/camera/ListPreference;
    .locals 3
    .parameter "key"

    .prologue
    .line 84
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->mSubPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 85
    .local v1, pref:Lcom/motorola/camera/ListPreference;
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    .end local v1           #pref:Lcom/motorola/camera/ListPreference;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reloadIcon()V
    .locals 4

    .prologue
    .line 72
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->mSubPreferences:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/PreferenceSettings;->hasSecondLevelDialogs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/PreferenceSettings;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->getPreference(Ljava/lang/String;)Lcom/motorola/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/IconListPreference;

    .line 77
    .local v2, pref:Lcom/motorola/camera/IconListPreference;
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v2}, Lcom/motorola/camera/IconListPreference;->getIconIds()[I

    move-result-object v0

    .line 79
    .local v0, iconIds:[I
    invoke-virtual {v2}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget v1, v0, v3

    .line 80
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissAllPopup()Z
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->dismissAllPopup()Z

    move-result v0

    .line 53
    .local v0, result:Z
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    return v0
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 35
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 37
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;

    .line 39
    .local v0, grid:Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->mSubPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->initialize(Lcom/motorola/camera/IconListPreference;Ljava/util/ArrayList;)V

    .line 40
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->setOnSettingChangeListener(Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;)V

    .line 41
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->setNewPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;)V

    .line 42
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;IJ)V
    .locals 1
    .parameter "key"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/v2/IndicatorButton;->onSettingChanged(Ljava/lang/String;IJ)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mCurrentFeedbackHint:Z

    .line 98
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->reloadIcon()V

    .line 99
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->reloadPreference()V

    .line 68
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->reloadIcon()V

    .line 69
    return-void
.end method

.method public setPreference(Lcom/motorola/camera/ListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ListPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/ListPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, preferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/ListPreference;>;"
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->mSubPreferences:Ljava/util/ArrayList;

    .line 62
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;)V

    .line 63
    return-void
.end method
