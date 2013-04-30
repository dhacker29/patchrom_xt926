.class Landroid/net/wifi/MotWifiScan$1;
.super Landroid/content/BroadcastReceiver;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScan;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, wifiState:I
    const-string v4, "previous_wifi_state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, previousWifiState:I
    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v4, v3}, Landroid/net/wifi/MotWifiScan;->access$002(Landroid/net/wifi/MotWifiScan;I)I

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v4

    if-ne v4, v8, :cond_0

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v4, v6}, Landroid/net/wifi/MotWifiScan;->access$202(Landroid/net/wifi/MotWifiScan;Z)Z

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->unregisterSensorHubMovement()V
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)V

    .end local v1           #previousWifiState:I
    .end local v3           #wifiState:I
    :cond_1
    :goto_0
    return-void

    .restart local v1       #previousWifiState:I
    .restart local v3       #wifiState:I
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v4, v8}, Landroid/net/wifi/MotWifiScan;->access$202(Landroid/net/wifi/MotWifiScan;Z)Z

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mIsBootCompleted:Z
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$500(Landroid/net/wifi/MotWifiScan;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->registerSensorHubMovement()V
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)V

    goto :goto_0

    .end local v1           #previousWifiState:I
    .end local v3           #wifiState:I
    :cond_3
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v5}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v6}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v5, v6, v7}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mIsBootCompleted:Z
    invoke-static {v4, v8}, Landroid/net/wifi/MotWifiScan;->access$502(Landroid/net/wifi/MotWifiScan;Z)Z

    goto :goto_0

    :cond_4
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mScreenOn:Z
    invoke-static {v4, v8}, Landroid/net/wifi/MotWifiScan;->access$702(Landroid/net/wifi/MotWifiScan;Z)Z

    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->registerSensorHubMovement()V
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)V

    goto :goto_0

    :cond_5
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mScreenOn:Z
    invoke-static {v4, v6}, Landroid/net/wifi/MotWifiScan;->access$702(Landroid/net/wifi/MotWifiScan;Z)Z

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, wifiSleepPolicy:I
    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v4, v4, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->unregisterSensorHubMovement()V
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)V

    goto/16 :goto_0
.end method
