.class final enum Lcom/android/server/PowerManagerService$CardState;
.super Ljava/lang/Enum;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/PowerManagerService$CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/PowerManagerService$CardState;

.field public static final enum CARDSTATE_ABSENT:Lcom/android/server/PowerManagerService$CardState;

.field public static final enum CARDSTATE_PRESENT:Lcom/android/server/PowerManagerService$CardState;

.field public static final enum CARDSTATE_UNKNOWN:Lcom/android/server/PowerManagerService$CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/PowerManagerService$CardState;

    const-string v1, "CARDSTATE_ABSENT"

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_ABSENT:Lcom/android/server/PowerManagerService$CardState;

    new-instance v0, Lcom/android/server/PowerManagerService$CardState;

    const-string v1, "CARDSTATE_PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/PowerManagerService$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_PRESENT:Lcom/android/server/PowerManagerService$CardState;

    new-instance v0, Lcom/android/server/PowerManagerService$CardState;

    const-string v1, "CARDSTATE_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/server/PowerManagerService$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_UNKNOWN:Lcom/android/server/PowerManagerService$CardState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/PowerManagerService$CardState;

    sget-object v1, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_ABSENT:Lcom/android/server/PowerManagerService$CardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_PRESENT:Lcom/android/server/PowerManagerService$CardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_UNKNOWN:Lcom/android/server/PowerManagerService$CardState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/PowerManagerService$CardState;->$VALUES:[Lcom/android/server/PowerManagerService$CardState;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/PowerManagerService$CardState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/server/PowerManagerService$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService$CardState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/PowerManagerService$CardState;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/PowerManagerService$CardState;->$VALUES:[Lcom/android/server/PowerManagerService$CardState;

    invoke-virtual {v0}, [Lcom/android/server/PowerManagerService$CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/PowerManagerService$CardState;

    return-object v0
.end method
