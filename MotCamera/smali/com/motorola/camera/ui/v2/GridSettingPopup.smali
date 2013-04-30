.class public Lcom/motorola/camera/ui/v2/GridSettingPopup;
.super Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
.source "GridSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

.field private mNumColumns:I

.field protected mPreference:Lcom/motorola/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "GridSettingPopup"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->dismissPopup()V

    .line 85
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->reloadPreference()V

    .line 86
    return-void
.end method

.method public initialize(Lcom/motorola/camera/IconListPreference;)V
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v11, 0x2

    .line 55
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    .line 56
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mNumColumns:I

    .line 59
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 60
    .local v6, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getIconIds()[I

    move-result-object v8

    .line 62
    .local v8, iconIds:[I
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v3, v6

    if-ge v7, v3, :cond_1

    .line 66
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    aget-object v4, v6, v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-eqz v8, :cond_0

    const-string v3, "image"

    aget v4, v8, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 71
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03000b

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "text"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "image"

    aput-object v10, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 75
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/GridView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mNumColumns:I

    div-int/2addr v4, v5

    if-lez v4, :cond_2

    iget v4, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mNumColumns:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 76
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->reloadPreference()V

    .line 79
    return-void

    .line 75
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    .line 71
    nop

    :array_0
    .array-data 0x4
        0x2at 0x0t 0x8t 0x7ft
        0x2bt 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 103
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/BlurCheckin;->setGridPopupClicked(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4, p5}, Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;->onSettingChanged(Ljava/lang/String;IJ)V

    .line 105
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 39
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GridSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setOnSettingChangeListener(Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/GridSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    .line 96
    return-void
.end method
