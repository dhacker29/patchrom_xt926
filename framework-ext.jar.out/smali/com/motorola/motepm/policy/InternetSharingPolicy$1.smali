.class Lcom/motorola/motepm/policy/InternetSharingPolicy$1;
.super Ljava/lang/Object;
.source "InternetSharingPolicy.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/policy/InternetSharingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/policy/InternetSharingPolicy;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/policy/InternetSharingPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;->this$0:Lcom/motorola/motepm/policy/InternetSharingPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;->this$0:Lcom/motorola/motepm/policy/InternetSharingPolicy;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/motorola/motepm/policy/InternetSharingPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->access$002(Lcom/motorola/motepm/policy/InternetSharingPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 35
    new-instance v0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;

    invoke-direct {v0, p0}, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;-><init>(Lcom/motorola/motepm/policy/InternetSharingPolicy$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/motepm/policy/InternetSharingPolicy$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;->this$0:Lcom/motorola/motepm/policy/InternetSharingPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/motepm/policy/InternetSharingPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->access$002(Lcom/motorola/motepm/policy/InternetSharingPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 49
    return-void
.end method
