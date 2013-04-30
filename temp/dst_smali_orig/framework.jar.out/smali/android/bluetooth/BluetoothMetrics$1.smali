.class final Landroid/bluetooth/BluetoothMetrics$1;
.super Ljava/lang/Thread;
.source "BluetoothMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$tag:Ljava/lang/String;

    iput-object p2, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p4, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    :try_start_0
    #calls: Landroid/bluetooth/BluetoothMetrics;->now()J
    invoke-static {}, Landroid/bluetooth/BluetoothMetrics;->access$000()J

    move-result-wide v4

    .local v4, timestamp:J
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    iget-object v1, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$id:Ljava/lang/String;

    const-string v3, "1.0"

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .local v0, event:Lcom/motorola/android/provider/CheckinEvent;
    iget-object v1, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    .local v7, btclass:Landroid/bluetooth/BluetoothClass;
    const/high16 v6, -0x100

    .local v6, accessory:I
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    :cond_0
    const-string v1, "accessory"

    invoke-virtual {v0, v1, v6}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "name"

    iget-object v2, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #event:Lcom/motorola/android/provider/CheckinEvent;
    .end local v4           #timestamp:J
    .end local v6           #accessory:I
    .end local v7           #btclass:Landroid/bluetooth/BluetoothClass;
    :goto_0
    return-void

    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    const-string v1, "BluetoothMetrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckinEvent exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
