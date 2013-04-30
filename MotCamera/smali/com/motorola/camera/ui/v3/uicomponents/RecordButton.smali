.class public Lcom/motorola/camera/ui/v3/uicomponents/RecordButton;
.super Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;
.source "RecordButton.java"

# interfaces
.implements Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 0
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/motorola/camera/ui/v3/uicomponents/RecordButton$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/v3/uicomponents/RecordButton$1;-><init>(Lcom/motorola/camera/ui/v3/uicomponents/RecordButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->rotate(I)V

    .line 51
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    check-cast v0, Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOrientation(I)V

    .line 52
    return-void
.end method
