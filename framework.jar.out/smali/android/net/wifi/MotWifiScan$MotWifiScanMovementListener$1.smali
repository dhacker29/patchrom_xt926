.class Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;
.super Ljava/lang/Object;
.source "MotWifiScan.java"

# interfaces
.implements Lcom/motorola/sensorhub/SensorHub$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1340
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1341
    const-string v2, "MotWifiScanMovementListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v4, v4, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/MotWifiScan;->access$1300(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v1

    .line 1346
    .local v1, listStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1349
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, lines:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1351
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 1352
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    #setter for: Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v2, v4}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->access$1202(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method

.method public onStartMovement()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1325
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1326
    const-string v0, "MotWifiScanMovementListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    #getter for: Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->access$1200(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 1334
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    #setter for: Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0, v1}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->access$1202(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method
