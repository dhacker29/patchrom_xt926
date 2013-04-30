.class public Lcom/motorola/camera/ui/v2/UserFeedbackObserver;
.super Ljava/lang/Object;
.source "UserFeedbackObserver.java"


# static fields
.field private static sInstance:Lcom/motorola/camera/ui/v2/UserFeedbackObserver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/ui/v2/UserFeedbackObserver;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;->sInstance:Lcom/motorola/camera/ui/v2/UserFeedbackObserver;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;

    invoke-direct {v0}, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;->sInstance:Lcom/motorola/camera/ui/v2/UserFeedbackObserver;

    .line 31
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;->sInstance:Lcom/motorola/camera/ui/v2/UserFeedbackObserver;

    return-object v0
.end method


# virtual methods
.method public addListeners(Lcom/motorola/camera/Notifier$Listener;Ljava/lang/String;)V
    .locals 2
    .parameter "listener"
    .parameter "prefKey"

    .prologue
    .line 35
    const-string v0, "pref_camera_mode_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_HDR:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 38
    :cond_0
    return-void
.end method

.method public getKeyforType(Lcom/motorola/camera/Notifier$TYPE;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 41
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_HDR:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_0

    .line 42
    const-string v0, "pref_camera_mode_key"

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListeners(Lcom/motorola/camera/Notifier$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 48
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_HDR:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 49
    return-void
.end method
