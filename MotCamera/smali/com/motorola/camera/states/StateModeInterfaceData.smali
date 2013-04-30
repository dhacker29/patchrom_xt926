.class public Lcom/motorola/camera/states/StateModeInterfaceData;
.super Ljava/lang/Object;
.source "StateModeInterfaceData.java"


# static fields
.field public static final CAPTURE_COMPLETE:I = 0x3

.field public static final ERROR:I = 0x64

.field public static final ERROR_CAMERA_DIED:I = 0x67

.field public static final ERROR_DEVICE_DISABLED:I = 0x66

.field public static final ERROR_HARDWARE:I = 0x65

.field public static final ERROR_PRE_CAPTURE_NOT_MET:I = 0x68

.field public static final FOCUS_REQUEST_COMPLETE:I = 0x2

.field public static final PRE_CAPTURE_COMPLETE:I = 0x1

.field public static final START_INIT_COMPLETE:I = 0x0

.field public static final START_POST_PROCESSING:I = 0x5

.field public static final STOP_CAPTURE_COMPLETE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsgId(I)I
    .locals 1
    .parameter "error"

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 55
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 49
    :pswitch_0
    const v0, 0x7f0b0080

    goto :goto_0

    .line 51
    :pswitch_1
    const v0, 0x7f0b0081

    goto :goto_0

    .line 53
    :pswitch_2
    const v0, 0x7f0b0082

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
