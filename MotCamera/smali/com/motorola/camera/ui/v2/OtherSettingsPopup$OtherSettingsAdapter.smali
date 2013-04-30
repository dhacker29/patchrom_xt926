.class Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OtherSettingsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/OtherSettingsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherSettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/motorola/camera/ListPreference;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/motorola/camera/ui/v2/OtherSettingsPopup;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/OtherSettingsPopup;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    .line 62
    invoke-virtual {p1}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    #getter for: Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->access$000(Lcom/motorola/camera/ui/v2/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 63
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method

.method private getSettingLayoutId(Lcom/motorola/camera/ListPreference;)I
    .locals 2
    .parameter "pref"

    .prologue
    const v0, 0x7f030010

    .line 69
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/PreferenceSettings;->isLocation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const v0, 0x7f03000f

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/PreferenceSettings;->isCheckBox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    const v0, 0x7f03000e

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/PreferenceSettings;->isSpinner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    const v0, 0x7f030013

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/PreferenceSettings;->isSlidebar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    const v0, 0x7f03000d

    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/PreferenceSettings;->isTwoLineItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const v0, 0x7f030014

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    #getter for: Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->access$000(Lcom/motorola/camera/ui/v2/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 92
    .local v0, pref:Lcom/motorola/camera/ListPreference;
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->getSettingLayoutId(Lcom/motorola/camera/ListPreference;)I

    move-result v2

    .line 93
    .local v2, viewLayoutId:I
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/InLineSettingItem;

    .line 96
    .local v1, view:Lcom/motorola/camera/ui/v2/InLineSettingItem;
    instance-of v3, v1, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 97
    check-cast v3, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->setPopupAddedListener(Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;)V

    .line 100
    :cond_0
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->initialize(Lcom/motorola/camera/ListPreference;)V

    .line 101
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/motorola/camera/ui/v2/OtherSettingsPopup;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;)V

    .line 102
    return-object v1
.end method
