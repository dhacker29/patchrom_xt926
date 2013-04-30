.class public final enum Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
.super Ljava/lang/Enum;
.source "PreCaptureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/states/PreCaptureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PRECAPTURE_COMPLETE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

.field public static final enum FOCUS_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

.field public static final enum MODE_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    const-string v1, "MODE_COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->MODE_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    .line 45
    new-instance v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    const-string v1, "FOCUS_COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->FOCUS_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    sget-object v1, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->MODE_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->FOCUS_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->$VALUES:[Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->$VALUES:[Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    invoke-virtual {v0}, [Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    return-object v0
.end method
