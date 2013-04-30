.class public final enum Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
.super Ljava/lang/Enum;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/states/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAMERA_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/states/StateManager$CAMERA_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

.field public static final enum CAPTURING:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

.field public static final enum CLOSE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

.field public static final enum IDLE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

.field public static final enum INIT:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

.field public static final enum POST_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

.field public static final enum PRE_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->INIT:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    .line 138
    new-instance v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->IDLE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    .line 139
    new-instance v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    const-string v1, "PRE_CAPTURE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->PRE_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    .line 140
    new-instance v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->CAPTURING:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    .line 141
    new-instance v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    const-string v1, "POST_CAPTURE"

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->POST_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    .line 142
    new-instance v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    const-string v1, "CLOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->CLOSE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    .line 136
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    sget-object v1, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->INIT:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->IDLE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->PRE_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->CAPTURING:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->POST_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->CLOSE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->$VALUES:[Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    const-class v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->$VALUES:[Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    invoke-virtual {v0}, [Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method
