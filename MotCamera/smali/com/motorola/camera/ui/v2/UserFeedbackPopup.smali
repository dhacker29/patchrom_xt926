.class public Lcom/motorola/camera/ui/v2/UserFeedbackPopup;
.super Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
.source "UserFeedbackPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mFeedbackValue:Ljava/lang/String;

.field private mLearnButton:Landroid/widget/Button;

.field protected mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

.field private mPreference:Lcom/motorola/camera/IconListPreference;

.field private mTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/UserFeedbackPopup;)Lcom/motorola/camera/IconListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    return-object v0
.end method

.method private isGuideMePackageAvailable()Z
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.genie.EXTERNAL_APP_HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/motorola/camera/IconListPreference;)V
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    .line 62
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    .line 63
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getFeedbackPref()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mFeedbackValue:Ljava/lang/String;

    .line 65
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getFeedbackTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 66
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getFeedbackMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 67
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getFeedbackTopicId()Ljava/lang/CharSequence;

    move-result-object v3

    .line 69
    .local v3, topicId:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->isGuideMePackageAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 73
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mLearnButton:Landroid/widget/Button;

    new-instance v5, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$1;

    invoke-direct {v5, p0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$1;-><init>(Lcom/motorola/camera/ui/v2/UserFeedbackPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mLearnButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :cond_0
    new-instance v0, Lcom/motorola/camera/PreferenceSettings;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/PreferenceSettings;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, pref:Lcom/motorola/camera/PreferenceSettings;
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/motorola/camera/PreferenceSettings;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pref_feedback_hdr_dismissed"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$2;

    invoke-direct {v5, p0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$2;-><init>(Lcom/motorola/camera/ui/v2/UserFeedbackPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mFeedbackValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, index:I
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/BlurCheckin;->setUserFeedbackPopupClicked()V

    .line 122
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/motorola/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;->onSettingChanged(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x7f08000f
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->onFinishInflate()V

    .line 50
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mTitleView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mTextView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mCheckBox:Landroid/widget/CheckBox;

    .line 53
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mLearnButton:Landroid/widget/Button;

    .line 55
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public setOnSettingChangeListener(Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mListener:Lcom/motorola/camera/ui/v2/GridSettingPopup$OnSettingChangeListener;

    .line 115
    return-void
.end method
