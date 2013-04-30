.class public final enum Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;
.super Ljava/lang/Enum;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FOCUS_UPDATE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum INIT_FOCUS_VIEW:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum RESET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum SET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum SET_FOCUS_REGION:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum UPDATE_FACES:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum UPDATE_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum UPDATE_FOCUS_REGION:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

.field public static final enum UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "INIT_FOCUS_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->INIT_FOCUS_VIEW:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 71
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "SET_FOCUS_REGION"

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->SET_FOCUS_REGION:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 72
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "UPDATE_FOCUS_REGION"

    invoke-direct {v0, v1, v5}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_REGION:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 73
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "SET_FOCUS_AREA"

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->SET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 74
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "UPDATE_FOCUS_AREA"

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 75
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "RESET_FOCUS_AREA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->RESET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 76
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "UPDATE_FOCUS_VISIBILITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 77
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    const-string v1, "UPDATE_FACES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FACES:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    sget-object v1, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->INIT_FOCUS_VIEW:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->SET_FOCUS_REGION:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_REGION:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->SET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->RESET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FACES:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->$VALUES:[Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->$VALUES:[Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    return-object v0
.end method
