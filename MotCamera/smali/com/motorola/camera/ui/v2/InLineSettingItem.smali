.class public abstract Lcom/motorola/camera/ui/v2/InLineSettingItem;
.super Landroid/widget/LinearLayout;
.source "InLineSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;
    }
.end annotation


# instance fields
.field protected mIndex:I

.field private mListener:Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/motorola/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected changeIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 53
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mIndex:I

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    iget v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->setValueIndex(I)V

    .line 55
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mListener:Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mListener:Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mIndex:I

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;->onSettingChanged(Ljava/lang/String;I)V

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->updateView()V

    .line 59
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->sendAccessibilityEvent(I)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(Lcom/motorola/camera/ListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setTitle(Lcom/motorola/camera/ListPreference;)V

    .line 43
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    .line 45
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->reloadPreference()V

    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->updateView()V

    .line 84
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->reloadValue()V

    .line 66
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mIndex:I

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setEnabled(Z)V

    .line 69
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setAlpha(F)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->updateView()V

    .line 75
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setEnabled(Z)V

    .line 72
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setAlpha(F)V

    goto :goto_0
.end method

.method protected rotateChild(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 49
    return-void
.end method

.method public setSettingChangedListener(Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mListener:Lcom/motorola/camera/ui/v2/InLineSettingItem$Listener;

    .line 79
    return-void
.end method

.method protected setTitle(Lcom/motorola/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 38
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method protected abstract updateView()V
.end method
