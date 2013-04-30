.class public Lcom/motorola/camera/ui/v2/IndicatorButton;
.super Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
.source "IndicatorButton.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;
.implements Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mCurrentFeedbackHint:Z

.field private mListener:Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;

.field private mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/motorola/camera/IconListPreference;

.field private mSwitch:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, "IndicatorButton"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mCurrentFeedbackHint:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/IconListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "IndicatorButton"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mCurrentFeedbackHint:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    .line 58
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    .line 59
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->reloadPreference()V

    .line 60
    return-void
.end method

.method private clearFeedback()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 238
    :cond_0
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/BlurCheckin;->setHDRRecommendationOff()V

    .line 240
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->reloadPreference()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mCurrentFeedbackHint:Z

    .line 242
    return-void
.end method


# virtual methods
.method public feedbackAvailable(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "type"
    .parameter "bundle"
    .parameter "toolbarOpen"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local p2
    :cond_1
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    const-string v3, "hdr"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 209
    .local v1, hint:Z
    if-eqz v1, :cond_5

    .line 210
    iput-boolean v1, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mCurrentFeedbackHint:Z

    .line 211
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    sget-object v4, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->HDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v4}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/IconListPreference;->setFeedbackPref(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v3, v4, :cond_4

    .line 213
    const v3, 0x7f040003

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setImageResource(I)V

    .line 217
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    .line 218
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 219
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/BlurCheckin;->updateHDRRecommended()V

    .line 221
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/BlurCheckin;->setHDRRecommendationOn()V

    .line 223
    :cond_3
    new-instance v2, Lcom/motorola/camera/PreferenceSettings;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/camera/PreferenceSettings;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, preference:Lcom/motorola/camera/PreferenceSettings;
    invoke-virtual {v2}, Lcom/motorola/camera/PreferenceSettings;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_feedback_hdr_dismissed"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 226
    .local v0, dismissed:Z
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/BlurCheckin;->setHDRDialogPreference(Z)V

    .line 227
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/PopupNotifier;->isAnyPopupShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->showFeedbackPopup()V

    goto/16 :goto_0

    .line 214
    .end local v0           #dismissed:Z
    .end local v2           #preference:Lcom/motorola/camera/PreferenceSettings;
    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v3, v4, :cond_2

    .line 215
    const v3, 0x7f040006

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setImageResource(I)V

    goto :goto_1

    .line 232
    :cond_5
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->clearFeedback()V

    goto/16 :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeFeedbackPopup()V
    .locals 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 161
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 162
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;

    .line 163
    .local v1, popup:Lcom/motorola/camera/ui/v2/UserFeedbackPopup;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->initialize(Lcom/motorola/camera/IconListPreference;)V

    .line 164
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->setOnSettingChangeListener(Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;)V

    .line 165
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->setNewPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;)V

    .line 166
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 148
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 149
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/GridSettingPopup;

    .line 151
    .local v0, grid:Lcom/motorola/camera/ui/v2/GridSettingPopup;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->initialize(Lcom/motorola/camera/IconListPreference;)V

    .line 152
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/GridSettingPopup;->setOnSettingChangeListener(Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;)V

    .line 153
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawerClosed()V
    .locals 0

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->dismissAllPopup()Z

    .line 258
    return-void
.end method

.method public onDrawerOpened()V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mCurrentFeedbackHint:Z

    if-eqz v0, :cond_0

    .line 246
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setImageResource(I)V

    .line 247
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    .line 248
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mSwitch:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 249
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/BlurCheckin;->setHDRRecommendationOn()V

    .line 250
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->isAnyPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->showFeedbackPopup()V

    .line 254
    :cond_0
    return-void
.end method

.method public onPreferenceChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->reloadPreference()V

    .line 191
    return-void
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 0
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->clearFeedback()V

    .line 196
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;IJ)V
    .locals 1
    .parameter "key"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->clearFeedback()V

    .line 174
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->dismissPopupDelayed()V

    .line 175
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;->onSettingChanged(Ljava/lang/String;IJ)V

    .line 178
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 4
    .parameter "keyvalues"

    .prologue
    .line 131
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 133
    aget-object v1, p1, v0

    .line 134
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 135
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iput-object v2, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setEnabled(Z)V

    .line 141
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->reloadPreference()V

    .line 142
    return-void

    .line 137
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 132
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 6

    .prologue
    .line 70
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    if-nez v3, :cond_0

    .line 71
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setEnabled(Z)V

    .line 104
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getIconIds()[I

    move-result-object v0

    .line 76
    .local v0, iconIds:[I
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->hasUsedIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getUnUsedIcon()I

    move-result v1

    .line 78
    .local v1, id:I
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getUsedIcon()I

    move-result v1

    .line 83
    :cond_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setImageResource(I)V

    .line 103
    .end local v1           #id:I
    :goto_1
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 84
    :cond_2
    if-eqz v0, :cond_6

    array-length v3, v0

    if-lez v3, :cond_6

    .line 87
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, index:I
    :cond_3
    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setImageResource(I)V

    goto :goto_1

    .line 90
    .end local v2           #index:I
    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 91
    .restart local v2       #index:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 93
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "IndicatorButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to find override value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->print()V

    goto :goto_0

    .line 101
    .end local v2           #index:I
    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/motorola/camera/IconListPreference;->getSingleIcon()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 183
    :cond_0
    const/4 p1, 0x0

    .line 185
    :cond_1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setEnabled(Z)V

    .line 186
    return-void
.end method

.method public setPreference(Lcom/motorola/camera/ListPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 111
    check-cast p1, Lcom/motorola/camera/IconListPreference;

    .end local p1
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mPreference:Lcom/motorola/camera/IconListPreference;

    .line 112
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->dismissAllPopup()Z

    .line 114
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->reloadPreference()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mCurrentFeedbackHint:Z

    .line 118
    return-void
.end method

.method public setSettingChangedListener(Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/IndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;

    .line 122
    return-void
.end method
