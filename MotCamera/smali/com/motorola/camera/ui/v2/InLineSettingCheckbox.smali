.class public Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;
.super Lcom/motorola/camera/ui/v2/InLineSettingItem;
.source "InLineSettingCheckbox.java"


# instance fields
.field protected mCheckbox:Landroid/widget/CheckBox;

.field protected mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected checkedChanged(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->changeIndex(I)Z

    .line 66
    return-void
.end method

.method public initialize(Lcom/motorola/camera/ListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->initialize(Lcom/motorola/camera/ListPreference;)V

    .line 41
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->onFinishInflate()V

    .line 46
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    .line 47
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$1;-><init>(Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$2;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$2;-><init>(Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    return-void
.end method

.method protected setTitle(Lcom/motorola/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setTitle(Lcom/motorola/camera/ListPreference;)V

    .line 34
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mSummary:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method protected updateView()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingItem;->mPreference:Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
