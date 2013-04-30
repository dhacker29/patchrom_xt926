.class Landroid/net/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApConfigStore$ActiveState;,
        Landroid/net/wifi/WifiApConfigStore$InactiveState;,
        Landroid/net/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String; = null

.field private static final AP_CONFIG_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "target"

    .prologue
    const-string v0, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Landroid/net/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$DefaultState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$InactiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$ActiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    new-instance v0, Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .local v0, s:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Landroid/net/wifi/WifiApConfigStore;->start()V

    return-object v0
.end method

.method private setDefaultApConfiguration()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v3, 0x104041c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, randomUUID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v2, 0x6

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    const/4 v2, 0x5

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v2, "192.168.43.1"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    const-string v2, "192.168.43.2"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    const-string v2, "192.168.43.254"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    return-void
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .local v2, out:Ljava/io/DataOutputStream;
    const-string v5, "WifiApConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WriteApConfig fn and config = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v7, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #out:Ljava/io/DataOutputStream;
    .local v3, out:Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .local v0, authType:I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v0, :cond_0

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_6

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_1
    move-object v2, v3

    .end local v0           #authType:I
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_5
    :goto_2
    return-void

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v0       #authType:I
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .end local v0           #authType:I
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_5
    throw v4

    :catch_2
    move-exception v5

    goto :goto_5

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v0       #authType:I
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v0           #authType:I
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_3
.end method


# virtual methods
.method getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiApConfigStore()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method loadApConfiguration()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .local v3, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .local v5, version:I
    if-eq v5, v6, :cond_2

    const-string v6, "WifiApConfigStore"

    const-string v7, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #version:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .local v0, authType:I
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    if-ne v7, v6, :cond_5

    :goto_2
    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_3
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .end local v0           #authType:I
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #version:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    .local v2, ignore:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    .end local v2           #ignore:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_6
    throw v6

    :catch_2
    move-exception v7

    goto :goto_6

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :catch_3
    move-exception v6

    goto :goto_0

    .restart local v0       #authType:I
    :catch_4
    move-exception v6

    goto :goto_3

    .end local v0           #authType:I
    .end local v5           #version:I
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_5

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_4
.end method

.method public setWifiApConfigStore(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "wifiConfig"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method updateApConfiguration()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .local v4, in:Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    sget-object v11, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .end local v4           #in:Ljava/io/DataInputStream;
    .local v5, in:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .local v6, version:I
    if-eq v6, v7, :cond_2

    const-string v7, "WifiApConfigStore"

    const-string v8, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :cond_0
    :goto_0
    move-object v1, v2

    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #version:I
    .restart local v4       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #version:I
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .local v0, authType:I
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v0}, Ljava/util/BitSet;->set(I)V

    if-eqz v0, :cond_4

    if-ne v0, v7, :cond_3

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    if-ne v9, v7, :cond_6

    :goto_2
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->channelIndex:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->max_scb:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    :try_start_9
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :goto_8
    :try_start_b
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :goto_9
    :try_start_c
    iput-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    if-eqz v5, :cond_5

    :try_start_d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_5
    :goto_a
    move-object v1, v2

    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v5       #in:Ljava/io/DataInputStream;
    :cond_6
    move v7, v8

    goto :goto_2

    :catch_0
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const/4 v7, 0x0

    :try_start_e
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_3

    .end local v0           #authType:I
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #version:I
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_b
    :try_start_f
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v4, :cond_1

    :try_start_10
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v0       #authType:I
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #version:I
    :catch_3
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const/4 v7, 0x6

    :try_start_11
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_4

    .end local v0           #authType:I
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #version:I
    :catchall_0
    move-exception v7

    move-object v1, v2

    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_c
    if-eqz v4, :cond_7

    :try_start_12
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    :cond_7
    :goto_d
    throw v7

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v0       #authType:I
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #version:I
    :catch_4
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const/4 v7, 0x5

    :try_start_13
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    goto :goto_5

    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const/16 v7, 0x8

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    goto :goto_6

    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "192.168.43.1"

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    goto :goto_7

    .end local v3           #e:Ljava/io/IOException;
    :catch_7
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "192.168.43.2"

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    goto :goto_8

    .end local v3           #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "192.168.43.254"

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_9

    .end local v0           #authType:I
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #version:I
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_9
    move-exception v8

    goto :goto_d

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #version:I
    :catch_a
    move-exception v7

    goto/16 :goto_0

    .restart local v0       #authType:I
    :catch_b
    move-exception v7

    goto :goto_a

    .end local v0           #authType:I
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #version:I
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    goto :goto_c

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    goto :goto_c

    :catch_c
    move-exception v3

    goto :goto_b

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :catch_d
    move-exception v3

    move-object v1, v2

    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    goto :goto_b
.end method

.method validateApConfigFields(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "wifiConfig"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v2, 0x104041c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, randomUUID:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v0           #randomUUID:Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "192.168.43.1"

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "192.168.43.2"

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    :cond_5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "192.168.43.254"

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    goto :goto_0
.end method
