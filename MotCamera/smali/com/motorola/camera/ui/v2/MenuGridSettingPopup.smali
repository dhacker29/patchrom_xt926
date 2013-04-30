.class public Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;
.super Lcom/motorola/camera/ui/v2/GridSettingPopup;
.source "MenuGridSettingPopup.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuGridSettingPopup"


# instance fields
.field private mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

.field private mSecondaryDialogIndex:I

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
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mSecondaryDialogIndex:I

    .line 29
    return-void
.end method

.method private getPreference(Ljava/lang/String;)Lcom/motorola/camera/ListPreference;
    .locals 3
    .parameter "key"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mSubPreferences:Ljava/util/ArrayList;

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

    .line 56
    .local v1, pref:Lcom/motorola/camera/ListPreference;
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    .end local v1           #pref:Lcom/motorola/camera/ListPreference;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeDialog(Lcom/motorola/camera/ListPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 44
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 46
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/GridSettingPopup;

    .line 48
    .local v0, grid:Lcom/motorola/camera/ui/v2/GridSettingPopup;
    check-cast p1, Lcom/motorola/camera/IconListPreference;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->initialize(Lcom/motorola/camera/IconListPreference;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->setOnSettingChangeListener(Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;)V

    .line 50
    iput-object v0, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 51
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method private showDialog(Lcom/motorola/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->setPressed(Z)V

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->initializeDialog(Lcom/motorola/camera/ListPreference;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mPopupListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mPopupListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mPopup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;->onNewPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)V

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public initialize(Lcom/motorola/camera/IconListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "preference"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/IconListPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/ListPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, preferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/ListPreference;>;"
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->initialize(Lcom/motorola/camera/IconListPreference;)V

    .line 66
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mSubPreferences:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v0, p3}, Lcom/motorola/camera/IconListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/PreferenceSettings;->hasSecondLevelDialogs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v0, p3}, Lcom/motorola/camera/IconListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/PreferenceSettings;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->getPreference(Ljava/lang/String;)Lcom/motorola/camera/ListPreference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->showDialog(Lcom/motorola/camera/ListPreference;)V

    .line 35
    iput p3, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mSecondaryDialogIndex:I

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onSettingChanged(Ljava/lang/String;IJ)V
    .locals 3
    .parameter "key"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->getPreference(Ljava/lang/String;)Lcom/motorola/camera/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ListPreference;->setValueIndex(I)V

    .line 77
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/v2/MenuGridSettingPopup;->mSecondaryDialogIndex:I

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;->onSettingChanged(Ljava/lang/String;IJ)V

    .line 78
    :cond_0
    return-void
.end method
