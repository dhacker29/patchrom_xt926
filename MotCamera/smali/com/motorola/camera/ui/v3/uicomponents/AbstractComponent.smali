.class public Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;
.super Ljava/lang/Object;
.source "AbstractComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mEventHandler:Lcom/motorola/camera/EventListener;

.field protected mOrientation:I

.field protected final mParentView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 0
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 46
    iput-object p2, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 47
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->init()V

    .line 48
    return-void
.end method


# virtual methods
.method public disableClick()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 100
    return-void
.end method

.method public enableClick()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 95
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public rotate(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 89
    iput p1, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mOrientation:I

    .line 90
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
