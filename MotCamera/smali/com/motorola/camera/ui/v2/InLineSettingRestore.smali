.class public Lcom/motorola/camera/ui/v2/InLineSettingRestore;
.super Lcom/motorola/camera/ui/v2/InLineSettingItem;
.source "InLineSettingRestore.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected setTitle(Lcom/motorola/camera/ListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 19
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/InLineSettingRestore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/InLineSettingRestore;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method protected updateView()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
