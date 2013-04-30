.class public abstract Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.super Ljava/lang/Object;
.source "AbstractUIComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;
    }
.end annotation


# static fields
.field public static mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field protected mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field protected mOrientation:I

.field protected mParentView:Landroid/view/View;

.field private volatile mResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, 0x7f09

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 2
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "AbstractUIComponent"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->TAG:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    .line 72
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mFadeIn:Landroid/view/animation/Animation;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mFadeOut:Landroid/view/animation/Animation;

    .line 76
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public disableClick()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 122
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public enableClick()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 117
    return-void
.end method

.method public fadeIn()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 101
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    return-void
.end method

.method public fadeOut()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 106
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getHeight() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getWidth() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    return v0
.end method

.method public onBackKeyPressed()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 237
    return-void
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 0
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    .line 234
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, result:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 200
    .local v0, action:I
    iget-boolean v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mResult:Z

    if-eqz v3, :cond_1

    .line 201
    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 213
    :goto_0
    return v2

    .line 204
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mResult:Z

    goto :goto_0

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    move-result v1

    .line 209
    if-eqz v1, :cond_2

    .line 210
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mResult:Z

    .line 212
    :cond_2
    const-string v2, "AbstractUIComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 213
    goto :goto_0
.end method

.method public postCapture()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public postCaptureEntry()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public preCapture()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public registerListeners()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public rotate(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 111
    iput p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    .line 112
    return-void
.end method

.method public setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 131
    return-void
.end method

.method public setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 178
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public toggleOpen()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListeners()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
