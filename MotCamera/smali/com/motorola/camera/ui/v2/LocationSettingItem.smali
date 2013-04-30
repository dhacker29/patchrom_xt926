.class public Lcom/motorola/camera/ui/v2/LocationSettingItem;
.super Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;
.source "LocationSettingItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationSettingItem"


# instance fields
.field private final DefaultSummary:Ljava/lang/String;

.field private final EnableLocation:Ljava/lang/String;

.field private final LocationFound:Ljava/lang/String;

.field private final LocationSearch:Ljava/lang/String;

.field mLocationDefaultText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->EnableLocation:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->LocationFound:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->LocationSearch:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->DefaultSummary:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private updateLocationText()V
    .locals 5

    .prologue
    .line 37
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->DefaultSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getLocationStatus()I

    move-result v1

    .line 43
    .local v1, status:I
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getLocationAddress()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, address:Ljava/lang/String;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "LocationSettingItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location status change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->LocationSearch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->LocationFound:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/LocationSettingItem;->EnableLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :pswitch_4
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected checkedChanged(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->checkedChanged(Z)V

    .line 33
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/LocationSettingItem;->updateLocationText()V

    .line 34
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->reloadPreference()V

    .line 66
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/LocationSettingItem;->updateLocationText()V

    .line 67
    return-void
.end method
