.class public final enum Lcom/motorola/camera/Notifier$TYPE;
.super Ljava/lang/Enum;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/Notifier$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ENV_CAF_STATUS:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ENV_HANDSHAKE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ENV_HDR:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ENV_IS:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum ENV_LOW_LIGHT:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum FM_CAF_LOWLIGHT_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum FOCUS:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum FOCUS_ICON:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum LOCATION_SETTINGS:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum STORE_PROGRESS:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum TIMER:Lcom/motorola/camera/Notifier$TYPE;

.field public static final enum VIDEO_SNAP:Lcom/motorola/camera/Notifier$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->TIMER:Lcom/motorola/camera/Notifier$TYPE;

    .line 42
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "FOCUS"

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    .line 43
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "FOCUS_ICON"

    invoke-direct {v0, v1, v5}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->FOCUS_ICON:Lcom/motorola/camera/Notifier$TYPE;

    .line 44
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "VIDEO_SNAP"

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->VIDEO_SNAP:Lcom/motorola/camera/Notifier$TYPE;

    .line 45
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "SYSTEM_POPUP"

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    .line 46
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "LOCATION_SETTINGS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->LOCATION_SETTINGS:Lcom/motorola/camera/Notifier$TYPE;

    .line 47
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "SHOW_TOAST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 48
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "ENV_CAF_STATUS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_CAF_STATUS:Lcom/motorola/camera/Notifier$TYPE;

    .line 49
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "ENV_LOW_LIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_LOW_LIGHT:Lcom/motorola/camera/Notifier$TYPE;

    .line 50
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "ENV_HANDSHAKE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_HANDSHAKE:Lcom/motorola/camera/Notifier$TYPE;

    .line 51
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "FM_FOCUS_PARAM_UPDATE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    .line 52
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "FM_CAF_LOWLIGHT_UPDATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->FM_CAF_LOWLIGHT_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    .line 53
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "ENV_IS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_IS:Lcom/motorola/camera/Notifier$TYPE;

    .line 54
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "ENV_HDR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_HDR:Lcom/motorola/camera/Notifier$TYPE;

    .line 55
    new-instance v0, Lcom/motorola/camera/Notifier$TYPE;

    const-string v1, "STORE_PROGRESS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Notifier$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->STORE_PROGRESS:Lcom/motorola/camera/Notifier$TYPE;

    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/motorola/camera/Notifier$TYPE;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->TIMER:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOCUS_ICON:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VIDEO_SNAP:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->LOCATION_SETTINGS:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_CAF_STATUS:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_LOW_LIGHT:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_HANDSHAKE:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->FM_CAF_LOWLIGHT_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_IS:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_HDR:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->STORE_PROGRESS:Lcom/motorola/camera/Notifier$TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/camera/Notifier$TYPE;->$VALUES:[Lcom/motorola/camera/Notifier$TYPE;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/Notifier$TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/Notifier$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/Notifier$TYPE;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->$VALUES:[Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, [Lcom/motorola/camera/Notifier$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/Notifier$TYPE;

    return-object v0
.end method
