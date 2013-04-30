.class Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusViewUpdate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/FocusView;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/FocusView;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/FocusView;Lcom/motorola/camera/ui/v2/FocusView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;-><init>(Lcom/motorola/camera/ui/v2/FocusView;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 13
    .parameter "type"
    .parameter "object"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 84
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 85
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 86
    .local v3, rectf:Landroid/graphics/RectF;
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    move-result-object v5

    .line 87
    .local v5, updateType:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 88
    const-string v7, "FocusView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    sget-object v7, Lcom/motorola/camera/ui/v2/FocusView$1;->$SwitchMap$com$motorola$camera$ui$v2$FocusView$FOCUS_UPDATE_TYPE:[I

    invoke-virtual {v5}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 92
    :pswitch_0
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewSetRegionTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    aget v6, v7, v10

    .line 93
    .local v6, width:I
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewSetRegionTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    aget v1, v7, v11

    .line 94
    .local v1, height:I
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    #calls: Lcom/motorola/camera/ui/v2/FocusView;->initFocusView(II)Z
    invoke-static {v7, v6, v1}, Lcom/motorola/camera/ui/v2/FocusView;->access$100(Lcom/motorola/camera/ui/v2/FocusView;II)Z

    goto :goto_0

    .line 97
    .end local v1           #height:I
    .end local v6           #width:I
    :pswitch_1
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateRegionTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    aget v2, v7, v10

    .line 98
    .local v2, left:I
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateRegionTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    aget v4, v7, v11

    .line 99
    .local v4, top:I
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    #calls: Lcom/motorola/camera/ui/v2/FocusView;->updateFocusRegion(II)V
    invoke-static {v7, v2, v4}, Lcom/motorola/camera/ui/v2/FocusView;->access$200(Lcom/motorola/camera/ui/v2/FocusView;II)V

    goto :goto_0

    .line 102
    .end local v2           #left:I
    .end local v4           #top:I
    :pswitch_2
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewSetAreaTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v7

    aget v7, v7, v10

    iput v7, v3, Landroid/graphics/RectF;->left:F

    .line 103
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewSetAreaTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v7

    aget v7, v7, v11

    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 104
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewSetAreaTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v7

    aget v7, v7, v12

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 105
    sget-object v7, Lcom/motorola/camera/FocusManager;->mFocusViewSetAreaTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v7

    const/4 v8, 0x3

    aget v7, v7, v8

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 106
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    #calls: Lcom/motorola/camera/ui/v2/FocusView;->setFocusArea(Landroid/graphics/RectF;)V
    invoke-static {v7, v3}, Lcom/motorola/camera/ui/v2/FocusView;->access$300(Lcom/motorola/camera/ui/v2/FocusView;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 109
    :pswitch_3
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    sget-object v8, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateAreaTag:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v8

    aget-boolean v8, v8, v10

    sget-object v9, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateAreaTag:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    aget-boolean v9, v9, v11

    sget-object v10, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateAreaTag:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v10

    aget-boolean v10, v10, v12

    #calls: Lcom/motorola/camera/ui/v2/FocusView;->updateFocusArea(ZZZ)Z
    invoke-static {v7, v8, v9, v10}, Lcom/motorola/camera/ui/v2/FocusView;->access$400(Lcom/motorola/camera/ui/v2/FocusView;ZZZ)Z

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    #calls: Lcom/motorola/camera/ui/v2/FocusView;->resetFocusArea()V
    invoke-static {v7}, Lcom/motorola/camera/ui/v2/FocusView;->access$500(Lcom/motorola/camera/ui/v2/FocusView;)V

    goto :goto_0

    .line 117
    :pswitch_5
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    sget-object v8, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateVisibilityTag:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    #calls: Lcom/motorola/camera/ui/v2/FocusView;->updateFocusAreaVisibility(I)V
    invoke-static {v7, v8}, Lcom/motorola/camera/ui/v2/FocusView;->access$600(Lcom/motorola/camera/ui/v2/FocusView;I)V

    goto/16 :goto_0

    .line 120
    :pswitch_6
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;->this$0:Lcom/motorola/camera/ui/v2/FocusView;

    sget-object v8, Lcom/motorola/camera/FocusManager;->mFocusViewFacesTag:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    #calls: Lcom/motorola/camera/ui/v2/FocusView;->updateFaces([I)V
    invoke-static {v7, v8}, Lcom/motorola/camera/ui/v2/FocusView;->access$700(Lcom/motorola/camera/ui/v2/FocusView;[I)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
