.class public final enum Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;
.super Ljava/lang/Enum;
.source "PanoramaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/PanoramaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PANORAMA_DATA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

.field public static final enum MOSAIC_PREPARING_PANORAMA:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

.field public static final enum MOSAIC_PREVIEW_IMAGE:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

.field public static final enum MOSAIC_SAVING_ERROR:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

.field public static final enum MOSAIC_SAVING_PROGRESS:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

.field public static final enum MOSAIC_VIEWFINDER_INFO:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    const-string v1, "MOSAIC_VIEWFINDER_INFO"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_VIEWFINDER_INFO:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    .line 73
    new-instance v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    const-string v1, "MOSAIC_SAVING_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_ERROR:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    .line 74
    new-instance v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    const-string v1, "MOSAIC_SAVING_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_PROGRESS:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    .line 75
    new-instance v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    const-string v1, "MOSAIC_PREVIEW_IMAGE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREVIEW_IMAGE:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    .line 76
    new-instance v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    const-string v1, "MOSAIC_PREPARING_PANORAMA"

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREPARING_PANORAMA:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    sget-object v1, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_VIEWFINDER_INFO:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_ERROR:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_PROGRESS:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREVIEW_IMAGE:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREPARING_PANORAMA:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->$VALUES:[Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->$VALUES:[Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v0}, [Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    return-object v0
.end method
