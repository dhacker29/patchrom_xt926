.class public Lcom/motorola/camera/ui/v2/OtherSettingsPopup;
.super Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
.source "OtherSettingsPopup.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;,
        Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OtherSettingsPopup"


# instance fields
.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/motorola/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/OtherSettingsPopup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "keys"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/camera/PreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 119
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 120
    .local v1, pref:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v1           #pref:Lcom/motorola/camera/ListPreference;
    :cond_1
    new-instance v2, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$OtherSettingsAdapter;-><init>(Lcom/motorola/camera/ui/v2/OtherSettingsPopup;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    .line 127
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->callOnClick()Z

    .line 161
    :cond_0
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "index"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;->onSettingChanged(Ljava/lang/String;I)V

    .line 136
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 140
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 141
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_2

    .line 142
    aget-object v3, p1, v1

    .line 143
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    aget-object v6, p1, v7

    .line 144
    .local v6, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 145
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ListPreference;

    .line 146
    .local v4, pref:Lcom/motorola/camera/ListPreference;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/v2/InLineSettingItem;

    .line 149
    .local v5, settingItem:Lcom/motorola/camera/ui/v2/InLineSettingItem;
    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->overrideSettings(Ljava/lang/String;)V

    .line 144
    .end local v5           #settingItem:Lcom/motorola/camera/ui/v2/InLineSettingItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .end local v4           #pref:Lcom/motorola/camera/ListPreference;
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 153
    .end local v2           #j:I
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 170
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 171
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    .line 173
    .local v2, pref:Lcom/motorola/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 174
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/v2/InLineSettingItem;

    .line 176
    .local v3, settingItem:Lcom/motorola/camera/ui/v2/InLineSettingItem;
    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->reloadPreference()V

    .line 171
    .end local v3           #settingItem:Lcom/motorola/camera/ui/v2/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v2           #pref:Lcom/motorola/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->setOrientation(I)V

    .line 166
    return-void
.end method

.method public setSettingChangedListener(Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/OtherSettingsPopup;->mListener:Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;

    .line 108
    return-void
.end method
