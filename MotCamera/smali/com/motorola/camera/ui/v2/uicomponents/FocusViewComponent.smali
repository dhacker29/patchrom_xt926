.class public Lcom/motorola/camera/ui/v2/uicomponents/FocusViewComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "FocusViewComponent.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFocusView:Lcom/motorola/camera/ui/v2/FocusView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 1
    .parameter "root"
    .parameter "parent"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 14
    const-string v0, "FocusViewComponent"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusViewComponent;->TAG:Ljava/lang/String;

    .line 25
    check-cast p1, Lcom/motorola/camera/ui/v2/FocusView;

    .end local p1
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusViewComponent;->mFocusView:Lcom/motorola/camera/ui/v2/FocusView;

    .line 26
    return-void
.end method


# virtual methods
.method public enableClick()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusViewComponent;->mFocusView:Lcom/motorola/camera/ui/v2/FocusView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/FocusView;->registerListeners()V

    .line 31
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusViewComponent;->mFocusView:Lcom/motorola/camera/ui/v2/FocusView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/FocusView;->unregisterListeners()V

    .line 36
    return-void
.end method
