.class Lcom/motorola/android/server/BluetoothEntitlement$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/BluetoothEntitlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/server/BluetoothEntitlement;


# direct methods
.method constructor <init>(Lcom/motorola/android/server/BluetoothEntitlement;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/motorola/android/server/BluetoothEntitlement;->access$800(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    iput-boolean v3, v1, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    .line 211
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BT_TETHER_PENDING"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    const-string v1, "MHS"

    const-string v2, "com.motorola.SPG.FEATURE_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "200"

    const-string v2, "com.motorola.SPG.STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "BluetoothEntitlement"

    const-string v2, "SPG Success : User provisioned. Start BT Tethering."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    const/4 v2, 0x3

    #setter for: Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I
    invoke-static {v1, v2}, Lcom/motorola/android/server/BluetoothEntitlement;->access$002(Lcom/motorola/android/server/BluetoothEntitlement;I)I

    .line 216
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "APN_CHECK_STATE"

    iget-object v3, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I
    invoke-static {v3}, Lcom/motorola/android/server/BluetoothEntitlement;->access$000(Lcom/motorola/android/server/BluetoothEntitlement;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "BluetoothEntitlement"

    const-string v2, "Fail : User not provisioned."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement$2;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setBluetoothTethering(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "BluetoothEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
