.class final enum Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
.super Ljava/lang/Enum;
.source "PanoSavingUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RotationLayoutParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

.field public static final enum ORIENT_0:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

.field public static final enum ORIENT_180:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

.field public static final enum ORIENT_270:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

.field public static final enum ORIENT_90:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

.field private static final mLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMessageLayoutParams:[[I

.field private final mPhoneOrientation:I

.field private final mProgressLayoutParams:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x2

    .line 148
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    const-string v1, "ORIENT_0"

    const/4 v3, 0x6

    new-array v4, v3, [[I

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    aput-object v3, v4, v2

    new-array v3, v11, [I

    fill-array-data v3, :array_1

    aput-object v3, v4, v12

    new-array v3, v11, [I

    fill-array-data v3, :array_2

    aput-object v3, v4, v11

    new-array v3, v11, [I

    fill-array-data v3, :array_3

    aput-object v3, v4, v13

    new-array v3, v11, [I

    fill-array-data v3, :array_4

    aput-object v3, v4, v14

    const/4 v3, 0x5

    new-array v5, v11, [I

    fill-array-data v5, :array_5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    new-array v5, v3, [[I

    new-array v3, v11, [I

    fill-array-data v3, :array_6

    aput-object v3, v5, v2

    new-array v3, v11, [I

    fill-array-data v3, :array_7

    aput-object v3, v5, v12

    new-array v3, v11, [I

    fill-array-data v3, :array_8

    aput-object v3, v5, v11

    new-array v3, v11, [I

    fill-array-data v3, :array_9

    aput-object v3, v5, v13

    new-array v3, v11, [I

    fill-array-data v3, :array_a

    aput-object v3, v5, v14

    const/4 v3, 0x5

    new-array v6, v11, [I

    fill-array-data v6, :array_b

    aput-object v6, v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;-><init>(Ljava/lang/String;II[[I[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_0:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    .line 162
    new-instance v3, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    const-string v4, "ORIENT_90"

    const/16 v6, 0x5a

    const/4 v0, 0x6

    new-array v7, v0, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_c

    aput-object v0, v7, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_d

    aput-object v0, v7, v12

    new-array v0, v11, [I

    fill-array-data v0, :array_e

    aput-object v0, v7, v11

    new-array v0, v11, [I

    fill-array-data v0, :array_f

    aput-object v0, v7, v13

    new-array v0, v11, [I

    fill-array-data v0, :array_10

    aput-object v0, v7, v14

    const/4 v0, 0x5

    new-array v1, v11, [I

    fill-array-data v1, :array_11

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-array v8, v0, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_12

    aput-object v0, v8, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_13

    aput-object v0, v8, v12

    new-array v0, v11, [I

    fill-array-data v0, :array_14

    aput-object v0, v8, v11

    new-array v0, v11, [I

    fill-array-data v0, :array_15

    aput-object v0, v8, v13

    new-array v0, v11, [I

    fill-array-data v0, :array_16

    aput-object v0, v8, v14

    const/4 v0, 0x5

    new-array v1, v11, [I

    fill-array-data v1, :array_17

    aput-object v1, v8, v0

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;-><init>(Ljava/lang/String;II[[I[[I)V

    sput-object v3, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_90:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    .line 176
    new-instance v3, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    const-string v4, "ORIENT_180"

    const/16 v6, 0xb4

    const/4 v0, 0x6

    new-array v7, v0, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_18

    aput-object v0, v7, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_19

    aput-object v0, v7, v12

    new-array v0, v11, [I

    fill-array-data v0, :array_1a

    aput-object v0, v7, v11

    new-array v0, v11, [I

    fill-array-data v0, :array_1b

    aput-object v0, v7, v13

    new-array v0, v11, [I

    fill-array-data v0, :array_1c

    aput-object v0, v7, v14

    const/4 v0, 0x5

    new-array v1, v11, [I

    fill-array-data v1, :array_1d

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-array v8, v0, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_1e

    aput-object v0, v8, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_1f

    aput-object v0, v8, v12

    new-array v0, v11, [I

    fill-array-data v0, :array_20

    aput-object v0, v8, v11

    new-array v0, v11, [I

    fill-array-data v0, :array_21

    aput-object v0, v8, v13

    new-array v0, v11, [I

    fill-array-data v0, :array_22

    aput-object v0, v8, v14

    const/4 v0, 0x5

    new-array v1, v11, [I

    fill-array-data v1, :array_23

    aput-object v1, v8, v0

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;-><init>(Ljava/lang/String;II[[I[[I)V

    sput-object v3, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_180:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    .line 190
    new-instance v3, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    const-string v4, "ORIENT_270"

    const/16 v6, 0x10e

    const/4 v0, 0x6

    new-array v7, v0, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_24

    aput-object v0, v7, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_25

    aput-object v0, v7, v12

    new-array v0, v11, [I

    fill-array-data v0, :array_26

    aput-object v0, v7, v11

    new-array v0, v11, [I

    fill-array-data v0, :array_27

    aput-object v0, v7, v13

    new-array v0, v11, [I

    fill-array-data v0, :array_28

    aput-object v0, v7, v14

    const/4 v0, 0x5

    new-array v1, v11, [I

    fill-array-data v1, :array_29

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-array v8, v0, [[I

    new-array v0, v11, [I

    fill-array-data v0, :array_2a

    aput-object v0, v8, v2

    new-array v0, v11, [I

    fill-array-data v0, :array_2b

    aput-object v0, v8, v12

    new-array v0, v11, [I

    fill-array-data v0, :array_2c

    aput-object v0, v8, v11

    new-array v0, v11, [I

    fill-array-data v0, :array_2d

    aput-object v0, v8, v13

    new-array v0, v11, [I

    fill-array-data v0, :array_2e

    aput-object v0, v8, v14

    const/4 v0, 0x5

    new-array v1, v11, [I

    fill-array-data v1, :array_2f

    aput-object v1, v8, v0

    move v5, v13

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;-><init>(Ljava/lang/String;II[[I[[I)V

    sput-object v3, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_270:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    .line 147
    new-array v0, v14, [Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_0:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_90:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    aput-object v1, v0, v12

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_180:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    aput-object v1, v0, v11

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->ORIENT_270:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    aput-object v1, v0, v13

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->$VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mLookup:Ljava/util/HashMap;

    .line 211
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    .line 212
    .local v10, params:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mLookup:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->getPhoneOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    .end local v10           #params:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
    :cond_0
    return-void

    .line 148
    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x8t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 162
    :array_c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x8t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 176
    :array_18
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x8t 0x7ft
    .end array-data

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 190
    :array_24
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x8t 0x7ft
    .end array-data

    :array_2e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II[[I[[I)V
    .locals 0
    .parameter
    .parameter
    .parameter "phoneOrientation"
    .parameter "layoutParams"
    .parameter "messageLayoutParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[I[[I)V"
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput p3, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mPhoneOrientation:I

    .line 221
    iput-object p4, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mProgressLayoutParams:[[I

    .line 222
    iput-object p5, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mMessageLayoutParams:[[I

    .line 223
    return-void
.end method

.method public static getRotationParams(I)Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
    .locals 2
    .parameter "orientation"

    .prologue
    .line 238
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mLookup:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
    .locals 1
    .parameter "name"

    .prologue
    .line 147
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->$VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    return-object v0
.end method


# virtual methods
.method public getMessageLayoutParams()[[I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mMessageLayoutParams:[[I

    return-object v0
.end method

.method public getPhoneOrientation()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mPhoneOrientation:I

    return v0
.end method

.method public getProgressLayoutParams()[[I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->mProgressLayoutParams:[[I

    return-object v0
.end method
