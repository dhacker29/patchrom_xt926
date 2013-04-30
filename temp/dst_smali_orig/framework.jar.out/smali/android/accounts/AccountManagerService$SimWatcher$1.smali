.class Landroid/accounts/AccountManagerService$SimWatcher$1;
.super Landroid/telephony/PhoneStateListener;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService$SimWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManagerService$SimWatcher;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManagerService$SimWatcher;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/accounts/AccountManagerService$SimWatcher$1;->this$1:Landroid/accounts/AccountManagerService$SimWatcher;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaspChanged(I)V
    .locals 3
    .parameter "otaspMode"

    .prologue
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaspChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/accounts/AccountManagerService$SimWatcher$1;->this$1:Landroid/accounts/AccountManagerService$SimWatcher;

    #calls: Landroid/accounts/AccountManagerService$SimWatcher;->simStateChanged()V
    invoke-static {v0}, Landroid/accounts/AccountManagerService$SimWatcher;->access$2000(Landroid/accounts/AccountManagerService$SimWatcher;)V

    :cond_0
    return-void
.end method
