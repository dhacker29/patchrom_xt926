.class final Landroid/server/BluetoothGattProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothGattProfileHandler.java"


# static fields
.field private static final DBG:Z = false

.field private static final END:Ljava/lang/String; = "end"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final HANDLE:Ljava/lang/String; = "handle"

.field private static final MESSAGE_DISCONNECT_LE:I = 0xc

.field private static final MESSAGE_DISCOVER_CHARACTERISTICS_RESP:I = 0x7

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_BY_UUID_RESP:I = 0x5

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_RESP:I = 0x4

.field private static final MESSAGE_FIND_INCLUDED_SERVICE_RESP:I = 0x6

.field private static final MESSAGE_FIND_INFO_RESP:I = 0x8

.field private static final MESSAGE_READ_BY_TYPE_RESP:I = 0x9

.field private static final MESSAGE_READ_RESP:I = 0xa

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x1

.field private static final MESSAGE_SEND_INDICATION:I = 0x3

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x2

.field private static final MESSAGE_WRITE_RESP:I = 0xb

.field private static final NOTIFY:Ljava/lang/String; = "notify"

.field private static final PATH:Ljava/lang/String; = "PATH"

.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final REQUEST_HANDLE:Ljava/lang/String; = "request_handle"

.field private static final SESSION:Ljava/lang/String; = "session"

.field private static final START:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String; = "BluetoothGattProfileHandler"

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final VALUE_HANDLE:Ljava/lang/String; = "value_handle"

.field private static sInstance:Landroid/server/BluetoothGattProfileHandler;


# instance fields
.field private mAppConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            "Landroid/bluetooth/IBluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mRegisteredServers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/server/BluetoothGattProfileHandler$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothGattProfileHandler$1;-><init>(Landroid/server/BluetoothGattProfileHandler;)V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothGattProfileHandler;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->loadRegisteredServers([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothGattProfileHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverEnable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothGattProfileHandler;->callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 5
    .parameter "config"
    .parameter "action"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onGattActionComplete(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 5
    .parameter "config"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Application: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " State Change: status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattAppConfigurationStatusChange(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private errorStatusToString(II)Ljava/lang/String;
    .locals 3
    .parameter "errorCode"
    .parameter "handle"

    .prologue
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .local v0, errorString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v1, 0xff

    if-gt p1, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT_0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "ATT_INVALID_HANDLE"

    goto :goto_1

    :pswitch_1
    const-string v0, "ATT_WRITE_NOT_PERM"

    goto :goto_1

    :pswitch_2
    const-string v0, "ATT_READ_NOT_PERM"

    goto :goto_1

    :pswitch_3
    const-string v0, "ATT_INVALID_PDU"

    goto :goto_1

    :pswitch_4
    const-string v0, "ATT_INSUFF_AUTHENTICATION"

    goto :goto_1

    :pswitch_5
    const-string v0, "ATT_REQ_NOT_SUPP"

    goto :goto_1

    :pswitch_6
    const-string v0, "ATT_INVALID_OFFSET"

    goto :goto_1

    :pswitch_7
    const-string v0, "ATT_INSUFF_AUTHORIZATION"

    goto :goto_1

    :pswitch_8
    const-string v0, "ATT_PREP_QUEUE_FULL"

    goto :goto_1

    :pswitch_9
    const-string v0, "ATT_ATTR_NOT_FOUND"

    goto :goto_1

    :pswitch_a
    const-string v0, "ATT_ATTR_NOT_LONG"

    goto :goto_1

    :pswitch_b
    const-string v0, "ATT_INSUFF_ENCR_KEY_SIZE"

    goto :goto_1

    :pswitch_c
    const-string v0, "ATT_INVAL_ATTR_VALUE_LEN"

    goto :goto_1

    :pswitch_d
    const-string v0, "ATT_UNLIKELY"

    goto :goto_1

    :pswitch_e
    const-string v0, "ATT_INSUFF_ENCRYPTION"

    goto :goto_1

    :pswitch_f
    const-string v0, "ATT_UNSUPP_GRP_TYPE"

    goto :goto_1

    :pswitch_10
    const-string v0, "ATT_INSUFF_RESOURCES"

    goto :goto_1

    :cond_2
    const-string v0, "ATT_UNLIKELY"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    const-class v1, Landroid/server/BluetoothGattProfileHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothGattProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothGattProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    :cond_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isServerEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRegisteredServers([Ljava/lang/String;)V
    .locals 4
    .parameter "servers"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeRegisteredServer(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private serverDisable(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothService;->unregisterGattServerNative(Ljava/lang/String;Z)Z

    return-void
.end method

.method private serverEnable(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z
    .locals 5
    .parameter "config"
    .parameter "devPath"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "closeGattLeConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "PATH"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverCharacteristicsResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IBIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "property"
    .parameter "valueHandle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverCharacteristicsResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " discoverCharacteristicsResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " property : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "property"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v3, "value_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryByUuidResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryByUuidResponse  handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "end"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "end"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "start"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findIncludedResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findIncludedResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "start"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "end"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;III)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findInfoResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findInfoResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverCharacteristicsRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattDiscoverCharacteristicsRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverCharacteristicRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverIncludedRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattDiscoverIncludedRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindIncludedServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryByUuidRequest(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 7
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattDiscoverPrimaryByUuidRequest - path : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "start :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " end : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .local v4, uuid:Landroid/os/ParcelUuid;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceByUuidRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v6, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattDiscoverPrimaryRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattFindInfoRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gatt object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindInfoRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadByTypeRequest(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "auth"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattReadByTypeRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .local v2, uuid:Landroid/os/ParcelUuid;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadByTypeRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v2           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v7, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadRequest(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "handle"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattReadRequest - path : handle :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p3, p2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattSetClientConfigDescriptor(Ljava/lang/String;II[B)V
    .locals 6
    .parameter "path"
    .parameter "sessionHandle"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattSetClientConfigDescriptor - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattSetClientConfigDescriptor(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteCommand(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGattWriteRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", auth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteCommand(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteRequest(Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 8
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"
    .parameter "sessionHandle"
    .parameter "reqHandle"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGattReliableWriteRequest - path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    move v6, p6

    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v7, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onIndicateResponse(Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "result"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Indicate response object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, v1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattIndicateResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "readByTypeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readByTypeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "payload"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "readResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z
    .locals 5
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "notify"
    .parameter "sessionHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "session"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "notify"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z
    .locals 4
    .parameter "config"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, v1}, Landroid/server/BluetoothGattProfileHandler;->removeRegisteredServer(Ljava/lang/String;)V

    const/4 v2, 0x1

    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const-string v2, "BluetoothGattProfileHandler"

    const-string v3, "unregisterAppConfiguration: GATT app not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;II)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "writeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " writeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "request_handle"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method
