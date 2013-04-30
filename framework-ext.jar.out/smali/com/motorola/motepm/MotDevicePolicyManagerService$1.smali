.class Lcom/motorola/motepm/MotDevicePolicyManagerService$1;
.super Ljava/lang/Object;
.source "MotDevicePolicyManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 721
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-static {p2}, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    move-result-object v3

    #setter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    invoke-static {v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$502(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    .line 723
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "Auxiliary service bound"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v2, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/Policy;

    .line 726
    .local v1, policy:Lcom/motorola/motepm/Policy;
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #getter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    invoke-static {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$500(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/motepm/Policy;->setAuxiliaryServiceInstance(Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)V

    goto :goto_0

    .line 728
    .end local v1           #policy:Lcom/motorola/motepm/Policy;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 732
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    #setter for: Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    invoke-static {v2, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$502(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    .line 733
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "Auxiliary service unbound"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v2, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/Policy;

    .line 736
    .local v1, policy:Lcom/motorola/motepm/Policy;
    invoke-virtual {v1, v4}, Lcom/motorola/motepm/Policy;->setAuxiliaryServiceInstance(Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)V

    goto :goto_0

    .line 740
    .end local v1           #policy:Lcom/motorola/motepm/Policy;
    :cond_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v2, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->access$600()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 741
    return-void
.end method
