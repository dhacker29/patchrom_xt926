.class public final enum Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;
.super Ljava/lang/Enum;
.source "DeviceProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/DeviceProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEV_PROP_STR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

.field public static final enum DEFAULT_STORAGE_LOC:Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;


# instance fields
.field private mSet:Z

.field private final mSystemProperty:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    const-string v1, "DEFAULT_STORAGE_LOC"

    const-string v2, "ro.camera.storage.default"

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->DEFAULT_STORAGE_LOC:Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->DEFAULT_STORAGE_LOC:Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mSet:Z

    .line 70
    return-void
.end method

.method static synthetic access$400(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->isSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->getProperty()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    return-object v0
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method private isSet()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mSet:Z

    return v0
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->mSet:Z

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0}, [Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    return-object v0
.end method
