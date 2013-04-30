.class Landroid/net/wifi/WifiRegDomService$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiRegDomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiRegDomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field private mStop:Z

.field final synthetic this$0:Landroid/net/wifi/WifiRegDomService;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiRegDomService;)V
    .locals 1
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Landroid/net/wifi/WifiRegDomService$MonitorThread;->this$0:Landroid/net/wifi/WifiRegDomService;

    .line 302
    const-string v0, "WifiRegDomService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiRegDomService$MonitorThread;->mStop:Z

    .line 303
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 321
    return-void
.end method

.method private nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 330
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 309
    :goto_0
    goto/32 :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiRegDomService$MonitorThread;->mStop:Z

    .line 316
    return-void
.end method
