.class public final enum Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
.super Ljava/lang/Enum;
.source "AbstractMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/modes/AbstractMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAPTURE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum HDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum MULTISHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum SERVICE_PICTURE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum SERVICE_VIDEO:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum SLOW_MOTION:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum TIMER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field public static final enum WDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;


# instance fields
.field private final mModeClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "SINGLESHOT"

    const-class v2, Lcom/motorola/camera/modes/SingleShotMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 317
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "MULTISHOT"

    const-class v2, Lcom/motorola/camera/modes/MultishotMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->MULTISHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 318
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "TIMER"

    const-class v2, Lcom/motorola/camera/modes/AutoTimerMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 319
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "TIMELAPSE"

    const-class v2, Lcom/motorola/camera/modes/TimeLapseMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 320
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "PANORAMA"

    const-class v2, Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 321
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "CAMCORDER"

    const/4 v2, 0x5

    const-class v3, Lcom/motorola/camera/modes/CamcorderMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 322
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "HDR"

    const/4 v2, 0x6

    const-class v3, Lcom/motorola/camera/modes/SingleShotMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->HDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 323
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "WDR"

    const/4 v2, 0x7

    const-class v3, Lcom/motorola/camera/modes/SingleShotMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->WDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 324
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "SERVICE_VIDEO"

    const/16 v2, 0x8

    const-class v3, Lcom/motorola/camera/modes/VideoModeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_VIDEO:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 325
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "SERVICE_PICTURE"

    const/16 v2, 0x9

    const-class v3, Lcom/motorola/camera/modes/SingleShotService;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_PICTURE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 326
    new-instance v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    const-string v1, "SLOW_MOTION"

    const/16 v2, 0xa

    const-class v3, Lcom/motorola/camera/modes/SlowMotionMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SLOW_MOTION:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 315
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->MULTISHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->HDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->WDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_VIDEO:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_PICTURE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SLOW_MOTION:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->$VALUES:[Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "modeClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 331
    iput-object p3, p0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->mModeClass:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public static final getClassName(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->mModeClass:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 315
    const-class v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->$VALUES:[Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, [Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->mModeClass:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferenceResource()I
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$1;->$SwitchMap$com$motorola$camera$modes$AbstractMode$CAPTURE_MODE:[I

    invoke-virtual {p0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    const/high16 v0, 0x7f05

    :goto_0
    return v0

    .line 366
    :pswitch_0
    const v0, 0x7f050001

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isServiceMode()Z
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$1;->$SwitchMap$com$motorola$camera$modes$AbstractMode$CAPTURE_MODE:[I

    invoke-virtual {p0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 397
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 395
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isStillCapture()Z
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$1;->$SwitchMap$com$motorola$camera$modes$AbstractMode$CAPTURE_MODE:[I

    invoke-virtual {p0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 349
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
