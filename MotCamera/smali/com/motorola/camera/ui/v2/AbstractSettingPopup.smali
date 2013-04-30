.class public abstract Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
.super Lcom/motorola/camera/ui/v2/Popup;
.source "AbstractSettingPopup.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected mPopupListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/Popup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0, p0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/Popup;->onFinishInflate()V

    .line 29
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 31
    return-void
.end method

.method public onNewPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)V
    .locals 1
    .parameter "popup"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mPopupListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mPopupListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;->onNewPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public abstract reloadPreference()V
.end method

.method public setNewPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;)V
    .locals 0
    .parameter "popupListener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mPopupListener:Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;

    .line 37
    return-void
.end method
