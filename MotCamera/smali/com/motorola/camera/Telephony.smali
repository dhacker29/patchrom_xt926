.class public Lcom/motorola/camera/Telephony;
.super Landroid/content/BroadcastReceiver;
.source "Telephony.java"


# instance fields
.field private mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 0
    .parameter "eventDispatcher"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/motorola/camera/Telephony;->mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    .line 42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, state:Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/motorola/camera/Telephony;->mEventDispatcher:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v3, Lcom/motorola/camera/Event;

    sget-object v4, Lcom/motorola/camera/Event$ACTION;->INCOMING_CALL:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v3, v4}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v2, v3}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 63
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public registerEvents(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public unregisterEvents(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    return-void
.end method
