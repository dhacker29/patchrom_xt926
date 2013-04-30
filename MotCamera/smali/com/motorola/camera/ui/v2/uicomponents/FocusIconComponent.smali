.class public Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "FocusIconComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;,
        Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;,
        Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusIconComponent"


# instance fields
.field private mFocusIcon:Landroid/widget/ImageView;

.field private mFocusIconUpdate:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 2
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 37
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIconUpdate:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;

    .line 48
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIcon:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIcon:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public registerListeners()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOCUS_ICON:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIconUpdate:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 83
    return-void
.end method

.method public unregisterListeners()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOCUS_ICON:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIconUpdate:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 88
    return-void
.end method
