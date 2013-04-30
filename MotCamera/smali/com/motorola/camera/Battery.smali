.class public Lcom/motorola/camera/Battery;
.super Landroid/content/BroadcastReceiver;
.source "Battery.java"


# static fields
.field private static final LOW_BATTERY_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MotoCameraBattery"


# instance fields
.field private mBatteryPercent:I

.field private mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

.field private mLowPower:Z

.field private mPowerConnected:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 1
    .parameter "eventDispatcher"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput v0, p0, Lcom/motorola/camera/Battery;->mBatteryPercent:I

    .line 45
    iput-boolean v0, p0, Lcom/motorola/camera/Battery;->mPowerConnected:Z

    .line 46
    iput-boolean v0, p0, Lcom/motorola/camera/Battery;->mLowPower:Z

    .line 50
    iput-object p1, p0, Lcom/motorola/camera/Battery;->mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    .line 51
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 72
    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    iput-boolean v3, p0, Lcom/motorola/camera/Battery;->mPowerConnected:Z

    .line 77
    iget-boolean v3, p0, Lcom/motorola/camera/Battery;->mLowPower:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/Battery;->mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v4, Lcom/motorola/camera/Event;

    sget-object v5, Lcom/motorola/camera/Event$ACTION;->BATTERY_OK:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v4, v5}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v3, v4}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 78
    :cond_2
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    iput-boolean v4, p0, Lcom/motorola/camera/Battery;->mPowerConnected:Z

    .line 80
    iget-boolean v3, p0, Lcom/motorola/camera/Battery;->mLowPower:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/Battery;->mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v4, Lcom/motorola/camera/Event;

    sget-object v5, Lcom/motorola/camera/Event$ACTION;->BATTERY_LOW:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v4, v5}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v3, v4}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 81
    :cond_3
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const-string v5, "level"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, batteryLevel:I
    const-string v5, "scale"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 84
    .local v2, batteryScale:I
    int-to-float v5, v1

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/Battery;->mBatteryPercent:I

    .line 85
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 86
    const-string v5, "MotoCameraBattery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", batteryScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", batteryPercent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/camera/Battery;->mBatteryPercent:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_4
    iget-boolean v6, p0, Lcom/motorola/camera/Battery;->mLowPower:Z

    iget v5, p0, Lcom/motorola/camera/Battery;->mBatteryPercent:I

    const/4 v7, 0x5

    if-gt v5, v7, :cond_6

    move v5, v3

    :goto_1
    if-eq v6, v5, :cond_0

    .line 91
    iget-boolean v5, p0, Lcom/motorola/camera/Battery;->mLowPower:Z

    if-nez v5, :cond_7

    :goto_2
    iput-boolean v3, p0, Lcom/motorola/camera/Battery;->mLowPower:Z

    .line 92
    iget-object v4, p0, Lcom/motorola/camera/Battery;->mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v5, Lcom/motorola/camera/Event;

    iget-boolean v3, p0, Lcom/motorola/camera/Battery;->mLowPower:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/motorola/camera/Battery;->mPowerConnected:Z

    if-eqz v3, :cond_8

    :cond_5
    sget-object v3, Lcom/motorola/camera/Event$ACTION;->BATTERY_OK:Lcom/motorola/camera/Event$ACTION;

    :goto_3
    invoke-direct {v5, v3}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v4, v5}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto/16 :goto_0

    :cond_6
    move v5, v4

    .line 90
    goto :goto_1

    :cond_7
    move v3, v4

    .line 91
    goto :goto_2

    .line 92
    :cond_8
    sget-object v3, Lcom/motorola/camera/Event$ACTION;->BATTERY_LOW:Lcom/motorola/camera/Event$ACTION;

    goto :goto_3
.end method

.method public registerBatteryEvents(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, battery:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 60
    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, plugged:I
    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/motorola/camera/Battery;->mPowerConnected:Z

    .line 64
    .end local v2           #plugged:I
    :cond_1
    return-void

    .line 61
    .restart local v2       #plugged:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public unregisterBatteryEvents(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    return-void
.end method
