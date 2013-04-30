.class final Lcom/android/server/PowerManagerService$SimStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimStateReceiver"
.end annotation


# instance fields
.field private mLastCardState:Lcom/android/server/PowerManagerService$CardState;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_UNKNOWN:Lcom/android/server/PowerManagerService$CardState;

    iput-object v0, p0, Lcom/android/server/PowerManagerService$SimStateReceiver;->mLastCardState:Lcom/android/server/PowerManagerService$CardState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SimStateReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, stateExtra:Ljava/lang/String;
    sget-object v0, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_UNKNOWN:Lcom/android/server/PowerManagerService$CardState;

    .local v0, currentCardState:Lcom/android/server/PowerManagerService$CardState;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_ABSENT:Lcom/android/server/PowerManagerService$CardState;

    :goto_0
    sget-object v2, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_ABSENT:Lcom/android/server/PowerManagerService$CardState;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$SimStateReceiver;->mLastCardState:Lcom/android/server/PowerManagerService$CardState;

    sget-object v3, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_ABSENT:Lcom/android/server/PowerManagerService$CardState;

    if-ne v2, v3, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_PRESENT:Lcom/android/server/PowerManagerService$CardState;

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/PowerManagerService$SimStateReceiver;->mLastCardState:Lcom/android/server/PowerManagerService$CardState;

    sget-object v3, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_ABSENT:Lcom/android/server/PowerManagerService$CardState;

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/android/server/PowerManagerService;->userActivityWithForce(JZZ)V

    :cond_2
    iput-object v0, p0, Lcom/android/server/PowerManagerService$SimStateReceiver;->mLastCardState:Lcom/android/server/PowerManagerService$CardState;

    :cond_3
    return-void

    :cond_4
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    sget-object v0, Lcom/android/server/PowerManagerService$CardState;->CARDSTATE_PRESENT:Lcom/android/server/PowerManagerService$CardState;

    goto :goto_0
.end method
