.class public Lcom/motorola/camera/ui/v2/DialogSettingPopup;
.super Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
.source "DialogSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;

.field private mPreference:Lcom/motorola/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "DialogSettingPopup"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public initialize(Lcom/motorola/camera/ListPreference;)V
    .locals 11
    .parameter "preference"

    .prologue
    const/4 v10, 0x2

    .line 33
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mPreference:Lcom/motorola/camera/ListPreference;

    .line 34
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 39
    .local v6, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v3, v6

    if-ge v7, v3, :cond_0

    .line 45
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    aget-object v4, v6, v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 50
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030005

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "text"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "image"

    aput-object v9, v4, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 54
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->reloadPreference()V

    .line 57
    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x2at 0x0t 0x8t 0x7ft
        0x2bt 0x0t 0x8t 0x7ft
    .end array-data
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
    .line 78
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;

    invoke-interface {v0, p3}, Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;->onSettingChanged(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mPreference:Lcom/motorola/camera/ListPreference;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v2}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v1, "DialogSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->print()V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/DialogSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/DialogSettingPopup$Listener;

    .line 73
    return-void
.end method
