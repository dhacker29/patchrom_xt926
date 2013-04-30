.class public final enum Lcom/motorola/camera/Event$ACTION;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/Event$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/Event$ACTION;

.field public static final enum BATTERY_LOW:Lcom/motorola/camera/Event$ACTION;

.field public static final enum BATTERY_OK:Lcom/motorola/camera/Event$ACTION;

.field public static final enum CAMERA_CAMCORDER_SWITCH:Lcom/motorola/camera/Event$ACTION;

.field public static final enum CANCEL_FOCUS:Lcom/motorola/camera/Event$ACTION;

.field public static final enum CAPTURE:Lcom/motorola/camera/Event$ACTION;

.field public static final enum CAPTURE_VIDEO_SNAPSHOT:Lcom/motorola/camera/Event$ACTION;

.field public static final enum FOCUS:Lcom/motorola/camera/Event$ACTION;

.field public static final enum FRONT_BACK_SWITCH:Lcom/motorola/camera/Event$ACTION;

.field public static final enum INACTIVITY_TIMEOUT:Lcom/motorola/camera/Event$ACTION;

.field public static final enum INCOMING_CALL:Lcom/motorola/camera/Event$ACTION;

.field public static final enum LAUNCH_ACTIVITY:Lcom/motorola/camera/Event$ACTION;

.field public static final enum MUTE_TOGGLE:Lcom/motorola/camera/Event$ACTION;

.field public static final enum SETTINGS_CHANGE:Lcom/motorola/camera/Event$ACTION;

.field public static final enum STORAGE:Lcom/motorola/camera/Event$ACTION;

.field public static final enum TOUCH_TO_FOCUS:Lcom/motorola/camera/Event$ACTION;

.field public static final enum WINDOW_CHANGE:Lcom/motorola/camera/Event$ACTION;

.field public static final enum ZOOM:Lcom/motorola/camera/Event$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "CAPTURE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    .line 204
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "CAMERA_CAMCORDER_SWITCH"

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->CAMERA_CAMCORDER_SWITCH:Lcom/motorola/camera/Event$ACTION;

    .line 205
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "FRONT_BACK_SWITCH"

    invoke-direct {v0, v1, v5}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->FRONT_BACK_SWITCH:Lcom/motorola/camera/Event$ACTION;

    .line 206
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "INACTIVITY_TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->INACTIVITY_TIMEOUT:Lcom/motorola/camera/Event$ACTION;

    .line 207
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "SETTINGS_CHANGE"

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->SETTINGS_CHANGE:Lcom/motorola/camera/Event$ACTION;

    .line 208
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "LAUNCH_ACTIVITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->LAUNCH_ACTIVITY:Lcom/motorola/camera/Event$ACTION;

    .line 209
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "CAPTURE_VIDEO_SNAPSHOT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->CAPTURE_VIDEO_SNAPSHOT:Lcom/motorola/camera/Event$ACTION;

    .line 210
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "ZOOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    .line 211
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "MUTE_TOGGLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->MUTE_TOGGLE:Lcom/motorola/camera/Event$ACTION;

    .line 212
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "TOUCH_TO_FOCUS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->TOUCH_TO_FOCUS:Lcom/motorola/camera/Event$ACTION;

    .line 213
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "FOCUS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->FOCUS:Lcom/motorola/camera/Event$ACTION;

    .line 214
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "CANCEL_FOCUS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->CANCEL_FOCUS:Lcom/motorola/camera/Event$ACTION;

    .line 215
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "STORAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->STORAGE:Lcom/motorola/camera/Event$ACTION;

    .line 216
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "BATTERY_LOW"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->BATTERY_LOW:Lcom/motorola/camera/Event$ACTION;

    .line 217
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "BATTERY_OK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->BATTERY_OK:Lcom/motorola/camera/Event$ACTION;

    .line 218
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "WINDOW_CHANGE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->WINDOW_CHANGE:Lcom/motorola/camera/Event$ACTION;

    .line 219
    new-instance v0, Lcom/motorola/camera/Event$ACTION;

    const-string v1, "INCOMING_CALL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/Event$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->INCOMING_CALL:Lcom/motorola/camera/Event$ACTION;

    .line 202
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/motorola/camera/Event$ACTION;

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->CAMERA_CAMCORDER_SWITCH:Lcom/motorola/camera/Event$ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->FRONT_BACK_SWITCH:Lcom/motorola/camera/Event$ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->INACTIVITY_TIMEOUT:Lcom/motorola/camera/Event$ACTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->SETTINGS_CHANGE:Lcom/motorola/camera/Event$ACTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->LAUNCH_ACTIVITY:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CAPTURE_VIDEO_SNAPSHOT:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->MUTE_TOGGLE:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->TOUCH_TO_FOCUS:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->FOCUS:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CANCEL_FOCUS:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->STORAGE:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->BATTERY_LOW:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->BATTERY_OK:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->WINDOW_CHANGE:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->INCOMING_CALL:Lcom/motorola/camera/Event$ACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/camera/Event$ACTION;->$VALUES:[Lcom/motorola/camera/Event$ACTION;

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
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/Event$ACTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 202
    const-class v0, Lcom/motorola/camera/Event$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/Event$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/Event$ACTION;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/motorola/camera/Event$ACTION;->$VALUES:[Lcom/motorola/camera/Event$ACTION;

    invoke-virtual {v0}, [Lcom/motorola/camera/Event$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/Event$ACTION;

    return-object v0
.end method
