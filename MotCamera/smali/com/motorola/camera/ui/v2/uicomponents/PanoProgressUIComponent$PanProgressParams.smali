.class final enum Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
.super Ljava/lang/Enum;
.source "PanoProgressUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PanProgressParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_0_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_0_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_180_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_180_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_270_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_270_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_90_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field public static final enum ORIENT_90_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

.field private static final mLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorLayoutParams:[[I

.field private final mLayoutParams:[[I

.field private final mPanDirection:I

.field private final mPanProgressOrientation:I

.field private final mPhoneOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 329
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_0_HORIZONTAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_3

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_4

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_5

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_6

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_7

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_8

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_9

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_a

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_b

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_0_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 344
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_0_VERTICAL"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_c

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_d

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_e

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_f

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_10

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_11

    aput-object v7, v5, v6

    const/16 v6, 0x10e

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_12

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_13

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_14

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_15

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_16

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_17

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_0_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 359
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_90_HORIZONTAL"

    const/4 v2, 0x2

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_18

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_19

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1a

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1b

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1c

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1d

    aput-object v7, v5, v6

    const/16 v6, 0x10e

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_1e

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_1f

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_20

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_21

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_22

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_23

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_90_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 374
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_90_VERTICAL"

    const/4 v2, 0x3

    const/16 v3, 0x5a

    const/4 v4, 0x1

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_24

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_25

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_26

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_27

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_28

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_29

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2a

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2b

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2c

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2d

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2e

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2f

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_90_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 389
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_180_HORIZONTAL"

    const/4 v2, 0x4

    const/16 v3, 0xb4

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_30

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_31

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_32

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_33

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_34

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_35

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_36

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_37

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_38

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_39

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_3a

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_3b

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_180_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 404
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_180_VERTICAL"

    const/4 v2, 0x5

    const/16 v3, 0xb4

    const/4 v4, 0x1

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_3c

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_3d

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_3e

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_3f

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_40

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_41

    aput-object v7, v5, v6

    const/16 v6, 0x10e

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_42

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_43

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_44

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_45

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_46

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_47

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_180_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 419
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_270_HORIZONTAL"

    const/4 v2, 0x6

    const/16 v3, 0x10e

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_48

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_49

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_4a

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_4b

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_4c

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_4d

    aput-object v7, v5, v6

    const/16 v6, 0x10e

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_4e

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_4f

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_50

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_51

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_52

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_53

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_270_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 434
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const-string v1, "ORIENT_270_VERTICAL"

    const/4 v2, 0x7

    const/16 v3, 0x10e

    const/4 v4, 0x1

    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_54

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_55

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_56

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_57

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_58

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_59

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [[I

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_5a

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_5b

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_5c

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_5d

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_5e

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_5f

    aput-object v11, v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;-><init>(Ljava/lang/String;III[[II[[I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_270_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 328
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_0_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_0_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_90_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_90_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_180_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_180_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_270_HORIZONTAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->ORIENT_270_VERTICAL:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->$VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mLookup:Ljava/util/HashMap;

    .line 458
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    .line 459
    .local v9, params:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mLookup:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getPhoneOrientation()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v9}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getPanDirection()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    .end local v9           #params:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    :cond_0
    return-void

    .line 329
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
        0x3et 0x0t 0x8t 0x7ft
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

    .line 344
    :array_c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
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
        0x0t 0x0t 0x0t 0x0t
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
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x8t 0x7ft
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

    .line 359
    :array_18
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x8t 0x7ft
    .end array-data

    :array_22
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 374
    :array_24
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
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
        0x3et 0x0t 0x8t 0x7ft
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
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 389
    :array_30
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x8t 0x7ft
    .end array-data

    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_39
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 404
    :array_3c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3d
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3f
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_40
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_41
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_42
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_43
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_45
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x8t 0x7ft
    .end array-data

    :array_46
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_47
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 419
    :array_48
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_49
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4b
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4d
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4f
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_50
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_51
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x8t 0x7ft
    .end array-data

    :array_52
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_53
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 434
    :array_54
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_55
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_56
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_57
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_58
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_59
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x8t 0x7ft
    .end array-data

    :array_5c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5f
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;III[[II[[I)V
    .locals 0
    .parameter
    .parameter
    .parameter "phoneOrientation"
    .parameter "panDirection"
    .parameter "layoutParams"
    .parameter "panProgressOrientation"
    .parameter "errorLayoutParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[[II[[I)V"
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 467
    iput p3, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mPhoneOrientation:I

    .line 468
    iput p4, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mPanDirection:I

    .line 469
    iput-object p5, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mLayoutParams:[[I

    .line 470
    iput p6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mPanProgressOrientation:I

    .line 471
    iput-object p7, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mErrorLayoutParams:[[I

    .line 472
    return-void
.end method

.method public static getPanProgressParam(II)Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    .locals 2
    .parameter "orientation"
    .parameter "direction"

    .prologue
    .line 495
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mLookup:Ljava/util/HashMap;

    mul-int/lit16 v1, p0, 0x3e8

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    .locals 1
    .parameter "name"

    .prologue
    .line 328
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->$VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    return-object v0
.end method


# virtual methods
.method public getErrorLayoutParams()[[I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mErrorLayoutParams:[[I

    return-object v0
.end method

.method public getLayoutParams()[[I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mLayoutParams:[[I

    return-object v0
.end method

.method public getPanDirection()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mPanDirection:I

    return v0
.end method

.method public getPanProgressOrientation()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mPanProgressOrientation:I

    return v0
.end method

.method public getPhoneOrientation()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->mPhoneOrientation:I

    return v0
.end method
