.class public Lcom/motorola/camera/ui/v2/InLineSettingTwoLineItem;
.super Lcom/motorola/camera/ui/v2/InLineSettingItem;
.source "InLineSettingTwoLineItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public reloadPreference()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method protected setTitle(Lcom/motorola/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/InLineSettingItem;->setTitle(Lcom/motorola/camera/ListPreference;)V

    .line 28
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingTwoLineItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method

.method protected updateView()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
