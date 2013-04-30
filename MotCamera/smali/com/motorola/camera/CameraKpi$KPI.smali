.class public final enum Lcom/motorola/camera/CameraKpi$KPI;
.super Ljava/lang/Enum;
.source "CameraKpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/CameraKpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/CameraKpi$KPI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum BLUR_CHECKIN:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CAMERA_CAMCORDER_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CAMERA_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CAMERA_OPEN_TASK_RUNTIME:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CAPTURE_WAIT_ON_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum GET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum INIT_PREFERENCE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum JPEG_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MEDIARECORDER_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MEDIARECORDER_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MEDIARECORDER_START:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MEDIARECORDER_STOP:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum PREFERENCE_INFLATE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SAVE_IMAGE_DB:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SAVE_IMAGE_FILE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SET_PREVIEW_DISPLAY:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum STARTUP_RESUME_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum START_PREVIEW:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TAP_FOCUS_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum UI_START:Lcom/motorola/camera/CameraKpi$KPI;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "START_PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->START_PREVIEW:Lcom/motorola/camera/CameraKpi$KPI;

    .line 27
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "CAMERA_OPEN"

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    .line 28
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "CAMERA_OPEN_TASK_RUNTIME"

    invoke-direct {v0, v1, v5}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN_TASK_RUNTIME:Lcom/motorola/camera/CameraKpi$KPI;

    .line 29
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 30
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "ON_RESUME"

    invoke-direct {v0, v1, v7}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    .line 31
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "ON_PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 32
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "TOTAL_STARTUP_O"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 33
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "STARTUP_PREVIEW_FRAME_O"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 34
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "STARTUP_RESUME_IDLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_RESUME_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 35
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "SET_PREVIEW_DISPLAY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SET_PREVIEW_DISPLAY:Lcom/motorola/camera/CameraKpi$KPI;

    .line 36
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "TOGGLE_CAMERA_O"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 37
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "CAMERA_CAMCORDER_O"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_CAMCORDER_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 38
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "UI_START"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->UI_START:Lcom/motorola/camera/CameraKpi$KPI;

    .line 39
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "SHOT_TO_SHOT_O"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 40
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "SAVE_IMAGE_DB"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_DB:Lcom/motorola/camera/CameraKpi$KPI;

    .line 41
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "SAVE_IMAGE_FILE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_FILE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 42
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "TAP_FOCUS_O"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TAP_FOCUS_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 43
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "MEDIARECORDER_PREPARE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 44
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "MEDIARECORDER_START"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_START:Lcom/motorola/camera/CameraKpi$KPI;

    .line 45
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "MEDIARECORDER_STOP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    .line 46
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "MEDIARECORDER_RELEASE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 47
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "INIT_PREFERENCE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->INIT_PREFERENCE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 48
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "PREFERENCE_INFLATE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->PREFERENCE_INFLATE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 49
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "GET_PARAMS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->GET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    .line 50
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "SET_PARAMS"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    .line 51
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "JPEG_CALLBACK"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->JPEG_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    .line 52
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "SHUTTER_CALLBACK"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    .line 53
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "FOCUS_CALLBACK"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    .line 54
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "CAPTURE_WAIT_ON_SAVE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->CAPTURE_WAIT_ON_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 55
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "BLUR_CHECKIN"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->BLUR_CHECKIN:Lcom/motorola/camera/CameraKpi$KPI;

    .line 56
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "CAMERA_RECEIVER"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    .line 25
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->START_PREVIEW:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN_TASK_RUNTIME:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_RESUME_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SET_PREVIEW_DISPLAY:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_CAMCORDER_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_START:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_DB:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SAVE_IMAGE_FILE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TAP_FOCUS_O:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_START:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->INIT_PREFERENCE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->PREFERENCE_INFLATE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->GET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->JPEG_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->CAPTURE_WAIT_ON_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->BLUR_CHECKIN:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/camera/CameraKpi$KPI;->$VALUES:[Lcom/motorola/camera/CameraKpi$KPI;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/CameraKpi$KPI;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraKpi$KPI;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/CameraKpi$KPI;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->$VALUES:[Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0}, [Lcom/motorola/camera/CameraKpi$KPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/CameraKpi$KPI;

    return-object v0
.end method
