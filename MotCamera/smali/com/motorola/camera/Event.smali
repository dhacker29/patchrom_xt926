.class public Lcom/motorola/camera/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/Event$ACTION;
    }
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXPOSURE:Ljava/lang/String; = "exposure"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IN:Ljava/lang/String; = "in"

.field public static final MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MOUNT_PATH:Ljava/lang/String; = "mount-path"

.field public static final OUT:Ljava/lang/String; = "out"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PREF_KEY:Ljava/lang/String; = "pref_key"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mAction:Lcom/motorola/camera/Event$ACTION;

.field private mBundle:Landroid/os/Bundle;

.field private mCaptureMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field private mData:Ljava/lang/String;

.field private mLeft:I

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mSettingId:J

.field private mSettingIndex:I

.field private mSettingPrefKey:Ljava/lang/String;

.field private mTop:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Event$ACTION;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/motorola/camera/Event;->mAction:Lcom/motorola/camera/Event$ACTION;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V
    .locals 0
    .parameter "action"
    .parameter "data"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/motorola/camera/Event;->mAction:Lcom/motorola/camera/Event$ACTION;

    .line 75
    iput-object p2, p0, Lcom/motorola/camera/Event;->mBundle:Landroid/os/Bundle;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Event$ACTION;Landroid/view/MotionEvent;II)V
    .locals 0
    .parameter "action"
    .parameter "event"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/motorola/camera/Event;->mAction:Lcom/motorola/camera/Event$ACTION;

    .line 125
    iput-object p2, p0, Lcom/motorola/camera/Event;->mMotionEvent:Landroid/view/MotionEvent;

    .line 126
    iput p3, p0, Lcom/motorola/camera/Event;->mLeft:I

    .line 127
    iput p4, p0, Lcom/motorola/camera/Event;->mTop:I

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Event$ACTION;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 0
    .parameter "action"
    .parameter "mode"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/motorola/camera/Event;->mAction:Lcom/motorola/camera/Event$ACTION;

    .line 97
    iput-object p2, p0, Lcom/motorola/camera/Event;->mCaptureMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Event$ACTION;Ljava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "data"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/motorola/camera/Event;->mAction:Lcom/motorola/camera/Event$ACTION;

    .line 86
    iput-object p2, p0, Lcom/motorola/camera/Event;->mData:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Event$ACTION;Ljava/lang/String;IJ)V
    .locals 0
    .parameter "action"
    .parameter "prefKey"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/motorola/camera/Event;->mAction:Lcom/motorola/camera/Event$ACTION;

    .line 110
    iput-object p2, p0, Lcom/motorola/camera/Event;->mSettingPrefKey:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/motorola/camera/Event;->mSettingIndex:I

    .line 112
    iput-wide p4, p0, Lcom/motorola/camera/Event;->mSettingId:J

    .line 113
    return-void
.end method


# virtual methods
.method public getAction()Lcom/motorola/camera/Event$ACTION;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/camera/Event;->mAction:Lcom/motorola/camera/Event$ACTION;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/camera/Event;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCaptureMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/motorola/camera/Event;->mCaptureMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/camera/Event;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/motorola/camera/Event;->mSettingId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/motorola/camera/Event;->mSettingIndex:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/motorola/camera/Event;->mLeft:I

    return v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/motorola/camera/Event;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/motorola/camera/Event;->mSettingPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/motorola/camera/Event;->mTop:I

    return v0
.end method
