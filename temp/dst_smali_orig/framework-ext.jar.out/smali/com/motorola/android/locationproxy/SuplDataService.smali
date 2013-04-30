.class public Lcom/motorola/android/locationproxy/SuplDataService;
.super Landroid/os/Handler;
.source "SuplDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/SuplDataService$1;,
        Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;,
        Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;,
        Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;
    }
.end annotation


# static fields
.field private static final ADDRESSTYPE_DNS:I = 0x1

.field private static final ADDRESSTYPE_IP:I = 0x0

.field private static final CONNECTION_TIMEOUT:I = 0x7530

.field private static final FTOUTPUT_TAG:Ljava/lang/String; = "FTOUTPUT"

.field private static final TAG:Ljava/lang/String; = "SUPLJ"


# instance fields
.field private mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

.field private mHost:Ljava/lang/String;

.field private mIsClosing:Z

.field private mIsTlsMode:Z

.field private mPort:S

.field private mSelector:Ljava/nio/channels/Selector;

.field private mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

.field private mSocketChannel:Ljava/nio/channels/SocketChannel;

.field private mSslContext:Ljavax/net/ssl/SSLContext;

.field private mSslSocket:Ljavax/net/ssl/SSLSocket;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V
    .locals 3
    .parameter "shimProxy"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    iput-boolean v2, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    iput-boolean v2, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    const/16 v0, 0x8f

    invoke-interface {p1, p0, v0, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplDataService;->flush(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/locationproxy/SuplDataService;)Ljava/nio/channels/Selector;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/locationproxy/SuplDataService;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/ISuplCommands;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/android/locationproxy/SuplDataService;)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplDataService;->byteBuffer2ByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/android/locationproxy/SuplDataService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    return v0
.end method

.method private byteBuffer2ByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .parameter "buffer"

    .prologue
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v0, v1, [B

    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private closeConnection()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    .local v1, tmpThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SUPLJ"

    const-string v3, "InterruptedException:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSslSocket(Ljava/lang/String;I)V
    .locals 3
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .local v0, ssf:Ljavax/net/ssl/SSLSocketFactory;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    const-string v1, "FTOUTPUT"

    const-string v2, "Handshake completed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private flush(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .local v0, bytesWrote:I
    const-string v1, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes written: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #bytesWrote:I
    :cond_0
    return-void
.end method

.method private initSslContext()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v7, :cond_0

    const-string v7, "SUPLJ"

    const-string v8, "initSslContext: mSslContext has inited"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v7, "SUPLJ"

    const-string v8, "initSslContext: initing Ssl Context..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "etc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "security"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, keyStoreDir:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/security/KeyStore;

    .local v4, keyStores:[Ljava/security/KeyStore;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "suplcerts.bks"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, suplKeyStoreName:Ljava/lang/String;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    aput-object v7, v4, v11

    const/4 v1, 0x0

    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v4, v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v2           #is:Ljava/io/FileInputStream;
    :goto_1
    const/4 v1, 0x0

    .restart local v1       #is:Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    const-string v7, "AndroidCAStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    aput-object v7, v4, v12

    aget-object v7, v4, v12

    invoke-virtual {v7, v10, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-array v5, v12, [Ljavax/net/ssl/TrustManager;

    .local v5, mgrs:[Ljavax/net/ssl/TrustManager;
    new-instance v7, Lcom/motorola/android/locationproxy/SuplTrustManager;

    invoke-direct {v7, v4}, Lcom/motorola/android/locationproxy/SuplTrustManager;-><init>([Ljava/security/KeyStore;)V

    aput-object v7, v5, v11

    const-string v7, "TLS"

    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v7, v10, v5, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    .end local v5           #mgrs:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v7, 0x0

    :try_start_3
    aget-object v7, v4, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File NOT Found:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    const/4 v1, 0x0

    :cond_2
    throw v7

    :catch_2
    move-exception v8

    goto :goto_5

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :cond_3
    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static intToIp(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private openPlainTextConnection(Ljava/lang/String;I)V
    .locals 8
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isCarrierSetingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isFallbackSuplHost(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isAgpsPdpEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Carrier PDP hasn\'t been enable"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {p1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isConfiguredHslp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsNetworkSync(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "SUPLJ"

    const-string v6, "Opening SocketChannel..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    :cond_3
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v4, socketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unresolved host address!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5, v4}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    :cond_6
    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    const-wide/16 v6, 0x7530

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    .local v3, result:I
    const-string v5, "SUPLJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result of select(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_9

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .local v1, key:Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_8

    const-string v5, "SUPLJ"

    const-string v6, "Ready to connect to server."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .local v2, keyChannel:Ljava/nio/channels/SocketChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "SUPLJ"

    const-string v6, "Waitting for connection to be established..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v5, "SUPLJ"

    const-string v6, "Connection established successfully."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    and-int/lit8 v5, v5, -0x9

    invoke-virtual {v1, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .end local v2           #keyChannel:Ljava/nio/channels/SocketChannel;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :cond_9
    const-string v5, "SUPLJ"

    const-string v6, "Timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->close()V

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Connect failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #result:I
    .end local v4           #socketAddress:Ljava/net/InetSocketAddress;
    :cond_a
    return-void
.end method

.method private openTlsSession(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "fqdn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/locationproxy/SuplDataService;->initSslContext()V

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/locationproxy/SuplDataService;->createSslSocket(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/motorola/android/locationproxy/SuplDataService;->verifyCnSan(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FTOUTPUT"

    const-string v1, "CN or SAN Verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Common Name or Subject Alternative Name Verification failed."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private scheduleHttpPost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "cmdId"
    .parameter "httpUrl"
    .parameter "path"
    .parameter "userAgent"

    .prologue
    new-instance v0, Lcom/motorola/android/locationproxy/SuplHttpPost;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/SuplHttpPost;-><init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V

    .local v0, httpPost:Lcom/motorola/android/locationproxy/SuplHttpPost;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/motorola/android/locationproxy/SuplHttpPost;->scheduleHttpPost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private verifyCnSan(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .parameter "fqdn"
    .parameter "session"

    .prologue
    new-instance v0, Lcom/motorola/android/locationproxy/FqdnVerifier;

    invoke-direct {v0}, Lcom/motorola/android/locationproxy/FqdnVerifier;-><init>()V

    .local v0, v:Ljavax/net/ssl/HostnameVerifier;
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_3
    const-string v1, "SUPLJ"

    const-string v2, "Closing done!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v1, "SUPLJ"

    const-string v2, "IOException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message Received:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    const-string v18, "SUPLJ"

    const-string v19, "Oops! Shouldn\'t be here."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v5

    .local v5, data:[Ljava/lang/Object;
    const/16 v18, 0x0

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, cmdId:I
    const/16 v18, 0x1

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .local v14, linkId:I
    const/16 v18, 0x4

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, addressType:I
    if-nez v3, :cond_2

    const/16 v18, 0x2

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/motorola/android/locationproxy/SuplDataService;->intToIp(I)Ljava/lang/String;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    const/16 v18, 0x3

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Short;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Short;->shortValue()S

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CmdId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " addressType:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mHost:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mPort:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    move/from16 v20, v0

    const v21, 0xffff

    and-int v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v18

    if-nez v18, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    move/from16 v19, v0

    const v20, 0xffff

    and-int v19, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService;->openPlainTextConnection(Ljava/lang/String;I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    :cond_1
    sget-object v18, Lcom/motorola/android/locationproxy/SuplDataService$1;->$SwitchMap$java$lang$Thread$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ConnectionPendingException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v13

    .local v13, ioe:Ljava/io/IOException;
    const-string v18, "SUPLJ"

    const-string v19, "IOException "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V

    goto/16 :goto_0

    .end local v13           #ioe:Ljava/io/IOException;
    :cond_2
    new-instance v19, Ljava/lang/String;

    const/16 v18, 0x5

    aget-object v18, v5, v18

    check-cast v18, [B

    check-cast v18, [B

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v18, v19

    goto/16 :goto_1

    :cond_3
    :try_start_1
    const-string v18, "SUPLJ"

    const-string v19, "Oops! Already connected."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/ConnectionPendingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    .local v9, ex:Ljava/nio/channels/ConnectionPendingException;
    const-string v18, "SUPLJ"

    const-string v19, "ConnectionPendingException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V

    goto/16 :goto_0

    .end local v9           #ex:Ljava/nio/channels/ConnectionPendingException;
    :pswitch_0
    :try_start_2
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService$PlainTextWorkerThread;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendOpenSocketResult(III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/channels/ConnectionPendingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .end local v3           #addressType:I
    .end local v4           #cmdId:I
    .end local v5           #data:[Ljava/lang/Object;
    .end local v14           #linkId:I
    :sswitch_1
    const/4 v8, 0x0

    .local v8, errorCode:B
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #data:[Ljava/lang/Object;
    const/16 v18, 0x0

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4       #cmdId:I
    const/16 v18, 0x1

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .restart local v14       #linkId:I
    new-instance v10, Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v18, v5, v18

    check-cast v18, [B

    check-cast v18, [B

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .local v10, fqdn:Ljava/lang/String;
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fqdn="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSelector:Ljava/nio/channels/Selector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mHost:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mPort:S

    move/from16 v19, v0

    const v20, 0xffff

    and-int v19, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/motorola/android/locationproxy/SuplDataService;->openTlsSession(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mWorkerThread:Ljava/lang/Thread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_5
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "errorCode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    :goto_4
    move-object/from16 v0, v18

    invoke-interface {v0, v4, v14, v8}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendTlsResult(IIB)V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    const-string v18, "SUPLJ"

    const-string v19, "What?! Shouldn\'t be here."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v8, 0x1

    goto :goto_3

    :catch_2
    move-exception v11

    .local v11, gse:Ljava/security/GeneralSecurityException;
    :try_start_5
    const-string v18, "FTOUTPUT"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x2

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_7
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "errorCode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    goto :goto_4

    .end local v11           #gse:Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v13

    .restart local v13       #ioe:Ljava/io/IOException;
    :try_start_6
    const-string v18, "FTOUTPUT"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v8, 0x1

    if-eqz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_8
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "errorCode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    goto/16 :goto_4

    .end local v13           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    if-eqz v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    :cond_9
    const-string v19, "SUPLJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "errorCode = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v14, v8}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendTlsResult(IIB)V

    throw v18

    .end local v4           #cmdId:I
    .end local v5           #data:[Ljava/lang/Object;
    .end local v8           #errorCode:B
    .end local v10           #fqdn:Ljava/lang/String;
    .end local v14           #linkId:I
    :sswitch_2
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #data:[Ljava/lang/Object;
    const/16 v18, 0x0

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4       #cmdId:I
    const/16 v18, 0x1

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .restart local v14       #linkId:I
    const/16 v18, 0x2

    aget-object v18, v5, v18

    check-cast v18, [B

    move-object/from16 v6, v18

    check-cast v6, [B

    .local v6, dataToServer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_b

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mIsTlsMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const-string v18, "SUPLJ"

    const-string v19, "Sending encrypted data to server..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .local v15, oStream:Ljava/io/OutputStream;
    invoke-virtual {v15, v6}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .end local v15           #oStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v18, "SUPLJ"

    const-string v19, "Closing socket"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->closeConnection()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    const-string v18, "SUPLJ"

    const-string v19, "Error sending data to server:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_8
    const-string v18, "SUPLJ"

    const-string v19, "Sending plain text to server..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mDataHandler:Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->sendData([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :cond_b
    const-string v18, "SUPLJ"

    const-string v19, "Connection not established!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendSocketDataResult(III)V

    goto/16 :goto_0

    .end local v4           #cmdId:I
    .end local v5           #data:[Ljava/lang/Object;
    .end local v6           #dataToServer:[B
    .end local v14           #linkId:I
    :sswitch_3
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #data:[Ljava/lang/Object;
    const/16 v18, 0x0

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4       #cmdId:I
    const/16 v18, 0x1

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .restart local v14       #linkId:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/locationproxy/SuplDataService;->closeConnection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v4, v14, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendCloseSocketResult(III)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z

    goto/16 :goto_0

    .end local v4           #cmdId:I
    .end local v5           #data:[Ljava/lang/Object;
    .end local v14           #linkId:I
    :sswitch_4
    const/4 v8, 0x0

    .restart local v8       #errorCode:B
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/locationproxy/SuplDataService;->msg2ObjArray(Landroid/os/Message;)[Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #data:[Ljava/lang/Object;
    const/16 v18, 0x0

    aget-object v18, v5, v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4       #cmdId:I
    new-instance v12, Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v18, v5, v18

    check-cast v18, [B

    check-cast v18, [B

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .local v12, httpUrl:Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v18, v5, v18

    check-cast v18, [B

    check-cast v18, [B

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v16, path:Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x3

    aget-object v18, v5, v18

    check-cast v18, [B

    check-cast v18, [B

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    .local v17, userAgent:Ljava/lang/String;
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "URL="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", file path="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", UserAgent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v12, v1, v2}, Lcom/motorola/android/locationproxy/SuplDataService;->scheduleHttpPost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_1
        0x80 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
