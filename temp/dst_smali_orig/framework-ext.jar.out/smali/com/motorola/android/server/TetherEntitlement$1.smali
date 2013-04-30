.class Lcom/motorola/android/server/TetherEntitlement$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/TetherEntitlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/server/TetherEntitlement;


# direct methods
.method constructor <init>(Lcom/motorola/android/server/TetherEntitlement;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/motorola/android/server/TetherEntitlement;->access$1300(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static {v0, v2}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "USB_TETHER_PENDING"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "MHS"

    const-string v1, "com.motorola.SPG.FEATURE_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "200"

    const-string v1, "com.motorola.SPG.STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TetherEntitlement"

    const-string v1, "SPG Success : User provisioned. Start USB Tethering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    const/4 v1, 0x3

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static {v0, v1}, Lcom/motorola/android/server/TetherEntitlement;->access$102(Lcom/motorola/android/server/TetherEntitlement;I)I

    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "APN_CHECK_STATE"

    iget-object v2, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static {v2}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "TetherEntitlement"

    const-string v1, "Fail : User not provisioned."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/motorola/android/server/TetherEntitlement$1;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    goto :goto_0
.end method
