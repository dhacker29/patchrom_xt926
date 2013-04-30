.class Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;
.super Ljava/lang/Object;
.source "FocusIconComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusIconUpdate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 6
    .parameter "type"
    .parameter "object"

    .prologue
    .line 55
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 56
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/motorola/camera/FocusManager;->mFocusIconUpdateTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    move-result-object v2

    .line 58
    .local v2, updateType:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "FocusIconComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v3, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;->$SwitchMap$com$motorola$camera$ui$v2$uicomponents$FocusIconComponent$FOCUS_ICON_UPDATE_TYPE:[I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 63
    :pswitch_0
    sget-object v3, Lcom/motorola/camera/FocusManager;->mFocusIconResultTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 64
    .local v1, focusResult:Z
    if-eqz v1, :cond_1

    .line 65
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->access$100(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->access$100(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 72
    .end local v1           #focusResult:Z
    :pswitch_1
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FocusIconUpdate;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->mFocusIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->access$100(Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;)Landroid/widget/ImageView;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/FocusManager;->mFocusIconUpdateVisibilityTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
