.class public Lcom/motorola/camera/ui/v3/uicomponents/UIComponentFactory;
.super Ljava/lang/Object;
.source "UIComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v3/uicomponents/UIComponentFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static createComponent(Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;Landroid/view/View;Lcom/motorola/camera/EventListener;)Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    .locals 2
    .parameter "type"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 67
    sget-object v0, Lcom/motorola/camera/ui/v3/uicomponents/UIComponentFactory$1;->$SwitchMap$com$motorola$camera$ui$v3$uicomponents$AbstractComponent$Type:[I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch;

    const v1, 0x7f08001f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_0

    .line 71
    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/v3/uicomponents/RecordButton;

    const v1, 0x7f080020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/motorola/camera/ui/v3/uicomponents/RecordButton;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getComponents([Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;Landroid/view/View;Lcom/motorola/camera/EventListener;)Ljava/util/Collection;
    .locals 6
    .parameter "types"
    .parameter "view"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;",
            "Landroid/view/View;",
            "Lcom/motorola/camera/EventListener;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 49
    .local v1, collection:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;>;"
    move-object v0, p0

    .local v0, arr$:[Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 50
    .local v5, type:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
    invoke-static {v5, p1, p2}, Lcom/motorola/camera/ui/v3/uicomponents/UIComponentFactory;->createComponent(Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;Landroid/view/View;Lcom/motorola/camera/EventListener;)Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;

    move-result-object v2

    .line 51
    .local v2, component:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v2           #component:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    .end local v5           #type:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
    :cond_1
    return-object v1
.end method
