.class public Lcom/motorola/camera/ui/v2/uicomponents/SnapshotBorder;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "SnapshotBorder.java"


# instance fields
.field mBorder:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 1
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/SnapshotBorder;->mBorder:Landroid/widget/FrameLayout;

    .line 16
    return-void
.end method
