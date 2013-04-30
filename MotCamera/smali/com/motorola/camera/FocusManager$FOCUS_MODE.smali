.class final enum Lcom/motorola/camera/FocusManager$FOCUS_MODE;
.super Ljava/lang/Enum;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FOCUS_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/FocusManager$FOCUS_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/FocusManager$FOCUS_MODE;

.field public static final enum STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

.field public static final enum STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

.field public static final enum STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

.field public static final enum STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

.field public static final enum STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/FocusManager$FOCUS_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 90
    new-instance v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    const-string v1, "STATE_FOCUSING"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/FocusManager$FOCUS_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 92
    new-instance v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    const-string v1, "STATE_FOCUSING_SNAP_ON_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/FocusManager$FOCUS_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 93
    new-instance v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    const-string v1, "STATE_SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/motorola/camera/FocusManager$FOCUS_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 94
    new-instance v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    const-string v1, "STATE_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/FocusManager$FOCUS_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->$VALUES:[Lcom/motorola/camera/FocusManager$FOCUS_MODE;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/FocusManager$FOCUS_MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    const-class v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/FocusManager$FOCUS_MODE;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->$VALUES:[Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v0}, [Lcom/motorola/camera/FocusManager$FOCUS_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    return-object v0
.end method
