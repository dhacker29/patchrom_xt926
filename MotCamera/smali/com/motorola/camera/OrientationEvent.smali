.class public Lcom/motorola/camera/OrientationEvent;
.super Landroid/view/OrientationEventListener;
.source "OrientationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MotoCameraOrientation"

.field private static mCurrentOrientation:I

.field private static mDisplayRotation:I

.field private static mOrientation:I

.field private static mWindowManager:Landroid/view/WindowManager;

.field protected static sOnRotationChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 0
    .parameter "context"
    .parameter "windowManager"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 31
    sput-object p2, Lcom/motorola/camera/OrientationEvent;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    return-void
.end method

.method private static getDisplayRotation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 159
    sget-object v2, Lcom/motorola/camera/OrientationEvent;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 160
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    return v1

    .line 162
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 163
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 164
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getOrientation()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/motorola/camera/OrientationEvent;->mCurrentOrientation:I

    return v0
.end method

.method private static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 141
    const/4 v0, 0x1

    .line 147
    :goto_0
    if-eqz v0, :cond_0

    .line 148
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 150
    .end local p1
    :cond_0
    return p1

    .line 143
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 144
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 145
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addOnRotationChangeListener(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 69
    sget-object v0, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    .line 73
    :cond_0
    sget-object v0, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lcom/motorola/camera/OrientationEvent;->dispatchOnRotationChanged()V

    .line 75
    return-void
.end method

.method public clearOnRotationChangeListener()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    :cond_0
    return-void
.end method

.method protected dispatchOnRotationChanged()V
    .locals 5

    .prologue
    .line 104
    sget-object v2, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 112
    :cond_0
    return-void

    .line 107
    :cond_1
    sget-object v2, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 109
    sget-object v2, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;

    sget v3, Lcom/motorola/camera/OrientationEvent;->mCurrentOrientation:I

    sget v4, Lcom/motorola/camera/OrientationEvent;->mDisplayRotation:I

    invoke-interface {v2, v3, v4}, Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;->onRotationChanged(II)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public displayChanged()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/motorola/camera/OrientationEvent;->dispatchOnRotationChanged()V

    .line 128
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 50
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget v1, Lcom/motorola/camera/OrientationEvent;->mOrientation:I

    invoke-static {p1, v1}, Lcom/motorola/camera/OrientationEvent;->roundOrientation(II)I

    move-result v1

    sput v1, Lcom/motorola/camera/OrientationEvent;->mOrientation:I

    .line 54
    invoke-static {}, Lcom/motorola/camera/OrientationEvent;->getDisplayRotation()I

    move-result v0

    .line 55
    .local v0, displayRotation:I
    sget v1, Lcom/motorola/camera/OrientationEvent;->mCurrentOrientation:I

    sget v2, Lcom/motorola/camera/OrientationEvent;->mOrientation:I

    if-ne v1, v2, :cond_2

    sget v1, Lcom/motorola/camera/OrientationEvent;->mDisplayRotation:I

    if-eq v1, v0, :cond_0

    .line 57
    :cond_2
    sget v1, Lcom/motorola/camera/OrientationEvent;->mOrientation:I

    sput v1, Lcom/motorola/camera/OrientationEvent;->mCurrentOrientation:I

    .line 58
    sput v0, Lcom/motorola/camera/OrientationEvent;->mDisplayRotation:I

    .line 59
    invoke-virtual {p0}, Lcom/motorola/camera/OrientationEvent;->dispatchOnRotationChanged()V

    goto :goto_0
.end method

.method public removeOnRotationChangeListener(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 83
    sget-object v0, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/motorola/camera/OrientationEvent;->sOnRotationChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method
