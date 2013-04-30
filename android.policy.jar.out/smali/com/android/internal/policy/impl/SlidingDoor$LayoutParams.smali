.class public Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "SlidingDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SlidingDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final OPEN_POS_VARIATIONS:I = 0x2


# instance fields
.field accelMoveK:F

.field buildCacheOnce:Z

.field closedOffset:I

.field fades:Z

.field initLeftMargin:I

.field initTopMargin:I

.field lead:Z

.field leadId:I

.field moveDelayDistance:I

.field openOffset:I

.field openOffsets:[I

.field otherDimOffset:I

.field visibleOnClose:Z

.field visibleOnOpen:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1031
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 961
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    .line 962
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    .line 963
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    .line 964
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->moveDelayDistance:I

    .line 965
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->accelMoveK:F

    .line 966
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->fades:Z

    .line 967
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnOpen:Z

    .line 968
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnClose:Z

    .line 969
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->lead:Z

    .line 970
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->buildCacheOnce:Z

    .line 974
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->leadId:I

    .line 975
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    .line 1032
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 979
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 961
    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    .line 962
    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    .line 963
    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    .line 964
    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->moveDelayDistance:I

    .line 965
    iput v9, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->accelMoveK:F

    .line 966
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->fades:Z

    .line 967
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnOpen:Z

    .line 968
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnClose:Z

    .line 969
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->lead:Z

    .line 970
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->buildCacheOnce:Z

    .line 974
    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->leadId:I

    .line 975
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    .line 981
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    .line 982
    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->topMargin:I

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    .line 984
    sget-object v4, Lcom/android/internal/R$styleable;->SlidingDoor_Layout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 987
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 988
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 989
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 990
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 988
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 992
    :pswitch_0
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    goto :goto_1

    .line 995
    :pswitch_1
    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    .line 996
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    aput v5, v4, v6

    goto :goto_1

    .line 999
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    aput v5, v4, v7

    goto :goto_1

    .line 1002
    :pswitch_3
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    goto :goto_1

    .line 1005
    :pswitch_4
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnOpen:Z

    goto :goto_1

    .line 1008
    :pswitch_5
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnClose:Z

    goto :goto_1

    .line 1011
    :pswitch_6
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->fades:Z

    goto :goto_1

    .line 1014
    :pswitch_7
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->lead:Z

    goto :goto_1

    .line 1017
    :pswitch_8
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->accelMoveK:F

    goto :goto_1

    .line 1020
    :pswitch_9
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->buildCacheOnce:Z

    goto :goto_1

    .line 1023
    :pswitch_a
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->leadId:I

    goto :goto_1

    .line 1027
    .end local v2           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1028
    return-void

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1038
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    .line 962
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    .line 963
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    .line 964
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->moveDelayDistance:I

    .line 965
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->accelMoveK:F

    .line 966
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->fades:Z

    .line 967
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnOpen:Z

    .line 968
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnClose:Z

    .line 969
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->lead:Z

    .line 970
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->buildCacheOnce:Z

    .line 974
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->leadId:I

    .line 975
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    .line 1039
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1045
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 961
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    .line 962
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    .line 963
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    .line 964
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->moveDelayDistance:I

    .line 965
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->accelMoveK:F

    .line 966
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->fades:Z

    .line 967
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnOpen:Z

    .line 968
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnClose:Z

    .line 969
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->lead:Z

    .line 970
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->buildCacheOnce:Z

    .line 974
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->leadId:I

    .line 975
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    .line 1046
    return-void
.end method


# virtual methods
.method public setMargins(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1063
    iput p1, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    .line 1064
    iput p2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    .line 1065
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1066
    return-void
.end method

.method public updateMarginsByOffsets(ZZI)V
    .locals 4
    .parameter "isClosed"
    .parameter "isVertical"
    .parameter "leadId"

    .prologue
    .line 1056
    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    :goto_0
    add-int v0, v3, v2

    .line 1057
    .local v0, marginLeft:I
    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    :goto_1
    add-int v1, v3, v2

    .line 1058
    .local v1, marginTop:I
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->bottomMargin:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1059
    return-void

    .line 1056
    .end local v0           #marginLeft:I
    .end local v1           #marginTop:I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    aget v2, v2, p3

    goto :goto_0

    .line 1057
    .restart local v0       #marginLeft:I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    aget v2, v2, p3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    goto :goto_1
.end method
