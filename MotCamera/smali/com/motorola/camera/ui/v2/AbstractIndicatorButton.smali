.class public abstract Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
.super Lcom/motorola/camera/ui/v2/RotateImageView;
.source "AbstractIndicatorButton.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
.implements Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$1;,
        Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;,
        Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;
    }
.end annotation


# instance fields
.field private final MSG_DISMISS_POPUP:I

.field private final TAG:Ljava/lang/String;

.field protected mFeedbackPopupShown:Z

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

.field protected mPopups:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/motorola/camera/ui/v2/AbstractSettingPopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "AbstractIndicatorButton"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    .line 43
    new-instance v0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;-><init>(Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$1;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    .line 44
    iput v2, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->MSG_DISMISS_POPUP:I

    .line 46
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mFeedbackPopupShown:Z

    .line 66
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->setPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setClickable(Z)V

    .line 70
    invoke-virtual {p0, p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v0, "AbstractIndicatorButton"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    .line 43
    new-instance v0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;-><init>(Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$1;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    .line 44
    iput v2, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->MSG_DISMISS_POPUP:I

    .line 46
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mFeedbackPopupShown:Z

    .line 57
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->setPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setClickable(Z)V

    .line 61
    invoke-virtual {p0, p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private getPopupOffset(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)I
    .locals 3
    .parameter "popup"

    .prologue
    const/16 v1, 0x320

    .line 154
    invoke-virtual {p1, v1, v1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->measure(II)V

    .line 155
    invoke-virtual {p1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->getMeasuredWidth()I

    move-result v0

    .line 156
    .local v0, width:I
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method private positionPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6
    .parameter "popup"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, -0x2

    .line 165
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f080058

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    new-array v2, v4, [I

    .line 169
    .local v2, x:[I
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getLocationOnScreen([I)V

    .line 170
    aget v3, v2, v5

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getPopupOffset(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)I

    move-result v4

    add-int v0, v3, v4

    .line 172
    .local v0, newPosition:I
    if-gtz v0, :cond_0

    .line 173
    aget v3, v2, v5

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 178
    :goto_0
    return-object v1

    .line 175
    :cond_0
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private declared-synchronized showPopup()V
    .locals 3

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->initializePopup()V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 212
    .local v0, popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->showPopup(I)V

    .line 213
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->positionPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    monitor-exit p0

    return-void

    .line 208
    .end local v0           #popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public dismissAllPopup()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setPressed(Z)V

    .line 220
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 222
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 223
    .local v0, popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->dismissPopup()V

    .line 225
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyDismissedPopup()V

    goto :goto_0

    .line 229
    .end local v0           #popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->dismissPopup()V

    .line 231
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyDismissedPopup()V

    .line 232
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v1, p0, v3}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->invalidate()V

    .line 234
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    move v1, v2

    .line 239
    :goto_1
    return v1

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method protected dismissPopupDelayed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    :cond_0
    return-void
.end method

.method public feedbackAvailable(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "type"
    .parameter "bundle"
    .parameter "toolbarOpen"

    .prologue
    .line 320
    return-void
.end method

.method public getPopupWindow()Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract initializeFeedbackPopup()V
.end method

.method protected abstract initializePopup()V
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isPopupShowing()Z
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    .line 284
    :goto_0
    return v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 284
    .local v0, popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->showPopup()V

    .line 103
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 111
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->dismissAllPopup()Z

    .line 106
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->showPopup()V

    .line 107
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->dismissAllPopup()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onNewPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)V
    .locals 1
    .parameter "popup"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->dismissPopup()V

    .line 189
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->showPopup()V

    .line 192
    :cond_1
    return-void
.end method

.method public onOtherPopupShowed()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->dismissAllPopup()Z

    move-result v0

    .line 77
    return v0
.end method

.method public onPopupDismissRequested()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->onPopupDismissRequested(Z)Z

    move-result v0

    return v0
.end method

.method public onPopupDismissRequested(Z)Z
    .locals 4
    .parameter "onlyAboveOne"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 303
    .local v0, popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 304
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->dismissPopup()V

    .line 305
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 306
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->showPopup()V

    .line 316
    .end local v0           #popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    :cond_2
    :goto_0
    return v1

    .line 308
    .restart local v0       #popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setPressed(Z)V

    .line 309
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v3, p0, v2}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 313
    goto :goto_0

    .end local v0           #popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    :cond_5
    move v1, v2

    .line 316
    goto :goto_0
.end method

.method public onPopupDismissed()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public varargs abstract overrideSettings([Ljava/lang/String;)V
.end method

.method public reloadPreference()V
    .locals 4

    .prologue
    .line 254
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 259
    :cond_0
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 257
    .local v1, popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->reloadPreference()V

    goto :goto_0
.end method

.method public resetFeedback()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mFeedbackPopupShown:Z

    .line 323
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 117
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 122
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setEnabled(Z)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->clearColorFilter()V

    .line 129
    :goto_1
    return-void

    .line 117
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 127
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public setIndicatorChangeListener(Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$IndicatorChangeListener;

    .line 82
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOrientation(I)V

    .line 136
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;

    .line 138
    .local v0, popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->dismissPopup()V

    .line 140
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->setOrientation(I)V

    .line 141
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->positionPopup(Lcom/motorola/camera/ui/v2/AbstractSettingPopup;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->showPopup(I)V

    .line 145
    .end local v0           #popup:Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
    :cond_0
    return-void
.end method

.method protected showFeedbackPopup()V
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mFeedbackPopupShown:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mFeedbackPopupShown:Z

    .line 201
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->initializeFeedbackPopup()V

    .line 202
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->showPopup()V

    .line 203
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 205
    :cond_0
    monitor-exit p0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
