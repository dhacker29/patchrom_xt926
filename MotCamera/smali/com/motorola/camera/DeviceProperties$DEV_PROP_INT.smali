.class public final enum Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;
.super Ljava/lang/Enum;
.source "DeviceProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/DeviceProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEV_PROP_INT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

.field public static final enum DEBUG:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

.field public static final enum DEBUG_VERBOSE:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

.field public static final enum MMC_ENCRYPTION:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

.field public static final enum SOUND_FORCED:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

.field public static final enum UI_VERSION:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;


# instance fields
.field private mSet:Z

.field private final mSystemProperty:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    const-string v1, "DEBUG"

    const-string v2, "debug.mot.camera"

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->DEBUG:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    .line 26
    new-instance v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    const-string v1, "DEBUG_VERBOSE"

    const-string v2, "debug.mot.camera.verbose"

    invoke-direct {v0, v1, v4, v2}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->DEBUG_VERBOSE:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    .line 27
    new-instance v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    const-string v1, "MMC_ENCRYPTION"

    const-string v2, "persist.sys.mot.encrypt.mmc"

    invoke-direct {v0, v1, v5, v2}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->MMC_ENCRYPTION:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    .line 28
    new-instance v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    const-string v1, "SOUND_FORCED"

    const-string v2, "ro.camera.sound.forced"

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    .line 29
    new-instance v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    const-string v1, "UI_VERSION"

    const-string v2, "mot.camera.ui.version"

    invoke-direct {v0, v1, v7, v2}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->UI_VERSION:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->DEBUG:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->DEBUG_VERBOSE:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->MMC_ENCRYPTION:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->UI_VERSION:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->$VALUES:[Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mSystemProperty:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mValue:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mSet:Z

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->isSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->getProperty()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->setValue(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->getValue()I

    move-result v0

    return v0
.end method

.method private getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mSystemProperty:Ljava/lang/String;

    return-object v0
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mValue:I

    return v0
.end method

.method private isSet()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mSet:Z

    return v0
.end method

.method private setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 54
    iput p1, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mValue:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->mSet:Z

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->$VALUES:[Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    invoke-virtual {v0}, [Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    return-object v0
.end method
