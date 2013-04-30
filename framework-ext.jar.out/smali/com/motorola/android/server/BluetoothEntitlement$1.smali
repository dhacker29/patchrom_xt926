.class Lcom/motorola/android/server/BluetoothEntitlement$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/server/BluetoothEntitlement;-><init>(Landroid/content/Context;)V
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
    .line 101
    iput-object p1, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 104
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "entitlement_state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    #setter for: Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I
    invoke-static {v4, v5}, Lcom/motorola/android/server/BluetoothEntitlement;->access$002(Lcom/motorola/android/server/BluetoothEntitlement;I)I

    .line 105
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "APN_CHECK_STATE"

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I
    invoke-static {v6}, Lcom/motorola/android/server/BluetoothEntitlement;->access$000(Lcom/motorola/android/server/BluetoothEntitlement;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$000(Lcom/motorola/android/server/BluetoothEntitlement;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 108
    const-string v4, "BluetoothEntitlement"

    const-string v5, "Entilement check fail."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    iget-boolean v4, v4, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    if-eqz v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$200(Lcom/motorola/android/server/BluetoothEntitlement;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "att"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    iput-boolean v7, v4, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    .line 112
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BT_TETHER_PENDING"

    invoke-static {v4, v5, v7}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-virtual {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->clearAllNotifications()V

    .line 114
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #calls: Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthErrorNotif(Z)V
    invoke-static {v4, v8}, Lcom/motorola/android/server/BluetoothEntitlement;->access$300(Lcom/motorola/android/server/BluetoothEntitlement;Z)V

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$200(Lcom/motorola/android/server/BluetoothEntitlement;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "entitlement_status_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, status_code:Ljava/lang/String;
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status Code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v3, :cond_2

    const-string v4, "-3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #calls: Lcom/motorola/android/server/BluetoothEntitlement;->startSelfProvision()V
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$500(Lcom/motorola/android/server/BluetoothEntitlement;)V

    goto :goto_0

    .line 126
    :cond_2
    const-string v4, "BluetoothEntitlement"

    const-string v5, "Status code is null or already provisioned."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    iput-boolean v7, v4, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    .line 128
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BT_TETHER_PENDING"

    invoke-static {v4, v5, v7}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    :try_start_1
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->setBluetoothTethering(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 131
    :catch_1
    move-exception v2

    .line 132
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #status_code:Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 138
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 140
    .local v1, bluetoothState:I
    if-ne v1, v9, :cond_0

    :try_start_2
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    const-string v4, "BluetoothEntitlement"

    const-string v5, "BT Tethering is ON : periodic timer scenario."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-virtual {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->clearAllNotifications()V

    .line 143
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    const/4 v5, 0x1

    #calls: Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthErrorNotif(Z)V
    invoke-static {v4, v5}, Lcom/motorola/android/server/BluetoothEntitlement;->access$300(Lcom/motorola/android/server/BluetoothEntitlement;Z)V

    .line 144
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->setBluetoothTethering(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 146
    :catch_2
    move-exception v2

    .line 147
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #bluetoothState:I
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$000(Lcom/motorola/android/server/BluetoothEntitlement;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 151
    const-string v4, "BluetoothEntitlement"

    const-string v5, "Entilement check success."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    iget-boolean v4, v4, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    if-eqz v4, :cond_5

    .line 153
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    iput-boolean v7, v4, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    .line 154
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BT_TETHER_PENDING"

    invoke-static {v4, v5, v7}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :try_start_3
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->setBluetoothTethering(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 160
    :goto_1
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$200(Lcom/motorola/android/server/BluetoothEntitlement;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "att"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-virtual {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->clearAllNotifications()V

    .line 162
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #calls: Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthSuccesNotif(Z)V
    invoke-static {v4, v8}, Lcom/motorola/android/server/BluetoothEntitlement;->access$600(Lcom/motorola/android/server/BluetoothEntitlement;Z)V

    goto/16 :goto_0

    .line 157
    :catch_3
    move-exception v2

    .line 158
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 166
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 168
    .restart local v1       #bluetoothState:I
    if-ne v1, v9, :cond_0

    :try_start_4
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const-string v4, "BluetoothEntitlement"

    const-string v5, "BT Tethering is ON : periodic timer, set ready notif."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-virtual {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->clearAllNotifications()V

    .line 171
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    const/4 v5, 0x1

    #calls: Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthSuccesNotif(Z)V
    invoke-static {v4, v5}, Lcom/motorola/android/server/BluetoothEntitlement;->access$600(Lcom/motorola/android/server/BluetoothEntitlement;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 173
    :catch_4
    move-exception v2

    .line 174
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #bluetoothState:I
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_6
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$000(Lcom/motorola/android/server/BluetoothEntitlement;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 178
    const-string v4, "BluetoothEntitlement"

    const-string v5, "Entilement check verifying."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    iget-boolean v4, v4, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    if-eqz v4, :cond_7

    .line 180
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "BT_TETHER_PENDING"

    invoke-static {v4, v5, v8}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$200(Lcom/motorola/android/server/BluetoothEntitlement;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "att"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-virtual {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->clearAllNotifications()V

    .line 183
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #calls: Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthNotif(Z)V
    invoke-static {v4, v8}, Lcom/motorola/android/server/BluetoothEntitlement;->access$700(Lcom/motorola/android/server/BluetoothEntitlement;Z)V

    goto/16 :goto_0

    .line 186
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 187
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 189
    .restart local v1       #bluetoothState:I
    if-ne v1, v9, :cond_0

    :try_start_5
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    #getter for: Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const-string v4, "BluetoothEntitlement"

    const-string v5, "BT Tethering is ON : periodic timer scanrio."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    invoke-virtual {v4}, Lcom/motorola/android/server/BluetoothEntitlement;->clearAllNotifications()V

    .line 192
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement$1;->this$0:Lcom/motorola/android/server/BluetoothEntitlement;

    const/4 v5, 0x1

    #calls: Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthNotif(Z)V
    invoke-static {v4, v5}, Lcom/motorola/android/server/BluetoothEntitlement;->access$700(Lcom/motorola/android/server/BluetoothEntitlement;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 194
    :catch_5
    move-exception v2

    .line 195
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
