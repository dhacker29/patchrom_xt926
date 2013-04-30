.class Lcom/motorola/motepm/MotEPMPhoneStateListener$1;
.super Landroid/os/AsyncTask;
.source "MotEPMPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/motepm/MotEPMPhoneStateListener;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;
    invoke-static {v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$300(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    #setter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;
    invoke-static {v1, v2}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$302(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/net/INetworkPolicyManager;)Landroid/net/INetworkPolicyManager;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;
    invoke-static {v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$300(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    aget-object v1, p1, v4

    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotEPMPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
