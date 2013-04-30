.class public Lcom/motorola/camera/ui/UILoader;
.super Ljava/lang/Object;
.source "UILoader.java"


# static fields
.field private static final CAMERA_3:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadUI(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;I)Lcom/motorola/camera/ui/UI;
    .locals 1
    .parameter "controller"
    .parameter "view"
    .parameter "uiVersion"

    .prologue
    .line 11
    packed-switch p2, :pswitch_data_0

    .line 15
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/v2/UIManager;-><init>(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;)V

    :goto_0
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/v3/UIManager;-><init>(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
