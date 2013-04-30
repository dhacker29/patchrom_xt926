.class Lcom/motorola/camera/DeviceSettings$1;
.super Ljava/lang/Object;
.source "DeviceSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/DeviceSettings;->getVideoPreviewSize(Lcom/motorola/camera/DeviceSettings$PreviewSize;)Lcom/motorola/camera/DeviceSettings$PreviewSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/DeviceSettings;


# direct methods
.method constructor <init>(Lcom/motorola/camera/DeviceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/motorola/camera/DeviceSettings$1;->this$0:Lcom/motorola/camera/DeviceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 4
    .parameter "left"
    .parameter "right"

    .prologue
    .line 425
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int v0, v2, v3

    .line 426
    .local v0, leftDim:I
    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int v1, v2, v3

    .line 427
    .local v1, rightDim:I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    check-cast p1, Landroid/hardware/Camera$Size;

    .end local p1
    check-cast p2, Landroid/hardware/Camera$Size;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/DeviceSettings$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
