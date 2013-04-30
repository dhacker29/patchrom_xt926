.class Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
.super Landroid/os/Handler;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotWifiScanHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method public constructor <init>(Landroid/net/wifi/MotWifiScan;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->this$0:Landroid/net/wifi/MotWifiScan;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MotWifiScan"

    const-string v2, "FATAL error in MotWifiScanHandler.handleMessage(), MUST catch:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
