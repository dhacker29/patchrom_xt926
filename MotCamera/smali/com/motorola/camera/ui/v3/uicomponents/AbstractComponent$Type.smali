.class public final enum Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
.super Ljava/lang/Enum;
.source "AbstractComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

.field public static final enum CAMERA_SWITCH:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

.field public static final enum RECORD_BUTTON:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    const-string v1, "CAMERA_SWITCH"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->CAMERA_SWITCH:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    .line 107
    new-instance v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    const-string v1, "RECORD_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->RECORD_BUTTON:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    sget-object v1, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->CAMERA_SWITCH:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->RECORD_BUTTON:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->$VALUES:[Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->$VALUES:[Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    return-object v0
.end method
