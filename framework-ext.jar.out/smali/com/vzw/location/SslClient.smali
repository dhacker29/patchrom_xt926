.class Lcom/vzw/location/SslClient;
.super Ljava/lang/Object;
.source "SslClient.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final SOCKET_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SslClient"

.field private static _trustAllCerts:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mKeystore:Ljava/security/KeyStore;

.field private mKeystorePasswd:Ljava/lang/String;

.field private mKeystorePath:Ljava/lang/String;

.field private mSslContext:Ljavax/net/ssl/SSLContext;

.field private mSslSocket:Ljavax/net/ssl/SSLSocket;

.field private mTimeout:I

.field private mTrustMgrs:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/vzw/location/SslClient$1;

    invoke-direct {v2}, Lcom/vzw/location/SslClient$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/vzw/location/SslClient;->_trustAllCerts:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mKeystorePath:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mKeystorePasswd:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    .line 81
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    .line 82
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 83
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/SslClient;->mTimeout:I

    .line 85
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "keystorePath"
    .parameter "keystorePasswd"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/vzw/location/SslClient;->mKeystorePath:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/vzw/location/SslClient;->mKeystorePasswd:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    .line 96
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    .line 97
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 98
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/SslClient;->mTimeout:I

    .line 100
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .parameter "keystore"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mKeystorePath:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mKeystorePasswd:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    .line 110
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    .line 111
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 112
    iput-object v0, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/SslClient;->mTimeout:I

    .line 114
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/TrustManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v1, p0, Lcom/vzw/location/SslClient;->mKeystorePath:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/vzw/location/SslClient;->mKeystorePasswd:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    .line 125
    iget-object v0, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    aput-object p1, v0, v2

    .line 126
    iput-object v1, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 127
    iput-object v1, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 128
    iput v2, p0, Lcom/vzw/location/SslClient;->mTimeout:I

    .line 129
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 130
    return-void
.end method

.method private close(Ljavax/net/ssl/SSLSocket;)V
    .locals 3
    .parameter "socket"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SslClient"

    const-string v2, "close(): IOException closing socket:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 353
    const-string v3, "SslClient"

    const-string v4, "initing ssl context..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v3, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    if-nez v3, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/vzw/location/SslClient;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    iput-object v3, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    .line 357
    iget-object v3, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 358
    :cond_0
    const-string v3, "SslClient"

    const-string v4, "getSslContext(): failed to get trust managers"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 376
    :goto_0
    return-object v1

    .line 363
    :cond_1
    const/4 v1, 0x0

    .line 365
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 366
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vzw/location/SslClient;->mTrustMgrs:[Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "SslClient"

    const-string v4, "getSslContext(): NoSuchAlgorithmException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    move-object v1, v2

    .line 376
    goto :goto_0

    .line 370
    :catch_1
    move-exception v0

    .line 371
    .local v0, e:Ljava/security/KeyManagementException;
    const-string v3, "SslClient"

    const-string v4, "getSslContext(): KeyManagementException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 372
    .end local v0           #e:Ljava/security/KeyManagementException;
    :catch_2
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SslClient"

    const-string v4, "getSslContext(): Exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getSslSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .locals 10
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v7, 0x0

    .line 306
    iget-object v6, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-nez v6, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/vzw/location/SslClient;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    iput-object v6, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 308
    iget-object v6, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-nez v6, :cond_1

    .line 309
    const-string v6, "SslClient"

    const-string v8, "getSslSocket(): failed to get ssl context"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 349
    :cond_0
    :goto_0
    return-object v5

    .line 314
    :cond_1
    iget-object v6, p0, Lcom/vzw/location/SslClient;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 315
    .local v4, ssf:Ljavax/net/ssl/SSLSocketFactory;
    if-nez v4, :cond_2

    .line 316
    const-string v6, "SslClient"

    const-string v8, "getSslSocket(): failed to get socket factory"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 317
    goto :goto_0

    .line 320
    :cond_2
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 321
    .local v3, socket:Ljava/net/Socket;
    const/4 v5, 0x0

    .line 323
    .local v5, sslSocket:Ljavax/net/ssl/SSLSocket;
    :try_start_0
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v8, 0xea60

    invoke-virtual {v3, v6, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 324
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v4, v3, v6, p2, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v5, v0

    .line 325
    const-string v6, "SslClient"

    const-string v8, "starting ssl handshake..."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 327
    const-string v6, "SslClient"

    const-string v8, "ssl handshake complete."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    iget-object v6, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v6, :cond_0

    .line 340
    const-string v6, "SslClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hostname verifier: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, hostname:Ljava/lang/String;
    iget-object v6, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 343
    const-string v6, "SslClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSslSocket(): server cert CN does not match "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, v5}, Lcom/vzw/location/SslClient;->close(Ljavax/net/ssl/SSLSocket;)V

    move-object v5, v7

    .line 345
    goto/16 :goto_0

    .line 328
    .end local v2           #hostname:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Ljava/io/IOException;
    const-string v6, "SslClient"

    const-string v8, "getSslSocket(): IOException:"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    invoke-direct {p0, v5}, Lcom/vzw/location/SslClient;->close(Ljavax/net/ssl/SSLSocket;)V

    move-object v5, v7

    .line 331
    goto/16 :goto_0

    .line 332
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 333
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SslClient"

    const-string v8, "getSslSocket(): Exception:"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-direct {p0, v5}, Lcom/vzw/location/SslClient;->close(Ljavax/net/ssl/SSLSocket;)V

    move-object v5, v7

    .line 335
    goto/16 :goto_0
.end method

.method private getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 380
    iget-object v8, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/vzw/location/SslClient;->mKeystorePath:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 381
    iget-object v8, p0, Lcom/vzw/location/SslClient;->mKeystorePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/vzw/location/SslClient;->mKeystorePasswd:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/vzw/location/SslClient;->loadKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    iput-object v8, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    .line 382
    iget-object v8, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    if-nez v8, :cond_1

    .line 383
    const-string v8, "SslClient"

    const-string v9, "getTrustManagers(): failed to load keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 433
    :cond_0
    :goto_0
    return-object v5

    .line 388
    :cond_1
    const/4 v5, 0x0

    .line 390
    .local v5, tms:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    iget-object v8, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    if-nez v8, :cond_2

    .line 393
    sget-object v5, Lcom/vzw/location/SslClient;->_trustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 407
    :goto_1
    if-nez v5, :cond_3

    move-object v5, v7

    .line 408
    goto :goto_0

    .line 395
    :cond_2
    const-string v8, "X509"

    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 396
    .local v4, tmf:Ljavax/net/ssl/TrustManagerFactory;
    iget-object v8, p0, Lcom/vzw/location/SslClient;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v4, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 397
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    goto :goto_1

    .line 399
    .end local v4           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "SslClient"

    const-string v9, "getTrustManagers(): NoSuchAlgorithmException:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 401
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 402
    .local v1, e:Ljava/security/KeyStoreException;
    const-string v8, "SslClient"

    const-string v9, "getTrustManagers(): KeyStoreException:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 403
    .end local v1           #e:Ljava/security/KeyStoreException;
    :catch_2
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "SslClient"

    const-string v9, "getTrustManagers(): Exception:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 413
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v7, "SslClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tms.length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 415
    aget-object v7, v5, v2

    instance-of v7, v7, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_6

    .line 416
    const-string v7, "SslClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tms["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: X509"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    aget-object v6, v5, v2

    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .line 418
    .local v6, xtm:Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v6}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 419
    .local v0, certs:[Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_5

    .line 420
    const-string v7, "SslClient"

    const-string v8, "accepted issuers is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v0           #certs:[Ljava/security/cert/X509Certificate;
    .end local v6           #xtm:Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 422
    .restart local v0       #certs:[Ljava/security/cert/X509Certificate;
    .restart local v6       #xtm:Ljavax/net/ssl/X509TrustManager;
    :cond_5
    const-string v7, "SslClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accepted issuers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 424
    const-string v7, "SslClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "certs["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 428
    .end local v0           #certs:[Ljava/security/cert/X509Certificate;
    .end local v3           #j:I
    .end local v6           #xtm:Ljavax/net/ssl/X509TrustManager;
    :cond_6
    const-string v7, "SslClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tms["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: not X509"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static loadKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 8
    .parameter "path"
    .parameter "passwd"

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, ks:Ljava/security/KeyStore;
    const/4 v1, 0x0

    .line 263
    .local v1, is:Ljava/io/FileInputStream;
    if-nez p1, :cond_2

    const/4 v4, 0x0

    .line 266
    .local v4, password:[C
    :goto_0
    :try_start_0
    const-string v5, "BKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 267
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    .line 268
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 269
    const-string v5, "SslClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    .line 293
    if-eqz v2, :cond_0

    .line 294
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_1
    move-object v1, v2

    .line 301
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    return-object v3

    .line 263
    .end local v4           #password:[C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    goto :goto_0

    .line 270
    .restart local v4       #password:[C
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/security/KeyStoreException;
    :goto_3
    :try_start_3
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): KeyStoreException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 296
    :catch_1
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    :goto_4
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 274
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): FileNotFoundException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 296
    :catch_3
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    goto :goto_4

    .line 276
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/SecurityException;
    :goto_6
    :try_start_7
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): SecurityException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 278
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 296
    :catch_5
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    goto :goto_4

    .line 279
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 280
    .local v0, e:Ljava/io/IOException;
    :goto_7
    :try_start_9
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 281
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2

    .line 296
    :catch_7
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    goto :goto_4

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 283
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    :goto_8
    :try_start_b
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): NoSuchAlgorithmException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 284
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_2

    .line 296
    :catch_9
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    goto :goto_4

    .line 285
    .end local v0           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 286
    .local v0, e:Ljava/security/cert/CertificateException;
    :goto_9
    :try_start_d
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): CertificateException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 287
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_2

    .line 296
    :catch_b
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    goto :goto_4

    .line 288
    .end local v0           #e:Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 289
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_a
    :try_start_f
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): Exception:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 290
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    goto/16 :goto_2

    .line 296
    :catch_d
    move-exception v0

    .line 297
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    goto/16 :goto_4

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 293
    :goto_b
    if-eqz v1, :cond_3

    .line 294
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 292
    :cond_3
    :goto_c
    throw v5

    .line 296
    :catch_e
    move-exception v0

    .line 297
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "SslClient"

    const-string v7, "loadKeystore(): IOException closing stream:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 296
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    .line 297
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "SslClient"

    const-string v6, "loadKeystore(): IOException closing stream:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_b

    .line 288
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_a

    .line 285
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_11
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_9

    .line 282
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_12
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_8

    .line 279
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_13
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_7

    .line 276
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_14
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 273
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_15
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 270
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_16
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v0}, Lcom/vzw/location/SslClient;->close(Ljavax/net/ssl/SSLSocket;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 199
    return-void
.end method

.method public open(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .locals 4
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v0, 0x0

    .line 175
    const-string v1, "SslClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open(): hostname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "SslClient"

    const-string v2, "open(): socket already opened"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/SslClient;->getSslSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 186
    iget-object v1, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 191
    iget v0, p0, Lcom/vzw/location/SslClient;->mTimeout:I

    invoke-virtual {p0, v0}, Lcom/vzw/location/SslClient;->setTimeout(I)Z

    .line 193
    iget-object v0, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    goto :goto_0
.end method

.method public read([B)I
    .locals 6
    .parameter "buffer"

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, size:I
    const/4 v1, 0x0

    .line 235
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 236
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    .line 245
    if-eqz v1, :cond_0

    .line 246
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 253
    :cond_0
    :goto_0
    return v2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/net/SocketTimeoutException;
    :try_start_2
    const-string v3, "SslClient"

    const-string v4, "read(): SocketTimeoutException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    if-eqz v1, :cond_0

    .line 246
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    .local v0, e:Ljava/io/IOException;
    const-string v3, "SslClient"

    const-string v4, "read(): IOException closing stream:"

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/InterruptedIOException;
    :try_start_4
    const-string v3, "SslClient"

    const-string v4, "read(): InterruptedIOException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    if-eqz v1, :cond_0

    .line 246
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 248
    :catch_3
    move-exception v0

    .line 249
    .local v0, e:Ljava/io/IOException;
    const-string v3, "SslClient"

    const-string v4, "read(): IOException closing stream:"

    goto :goto_1

    .line 241
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 242
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_6
    const-string v3, "SslClient"

    const-string v4, "read(): IOException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    if-eqz v1, :cond_0

    .line 246
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 248
    :catch_5
    move-exception v0

    .line 249
    const-string v3, "SslClient"

    const-string v4, "read(): IOException closing stream:"

    goto :goto_1

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 245
    if-eqz v1, :cond_1

    .line 246
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 244
    :cond_1
    :goto_2
    throw v3

    .line 248
    :catch_6
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "SslClient"

    const-string v5, "read(): IOException closing stream:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 248
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "SslClient"

    const-string v4, "read(): IOException closing stream:"

    goto :goto_1
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .parameter "verifier"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vzw/location/SslClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 138
    return-void
.end method

.method public setTimeout(I)Z
    .locals 5
    .parameter "timeout"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    if-gez p1, :cond_0

    .line 147
    const-string v2, "SslClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTimeout(): invalid timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return v1

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v3, :cond_1

    .line 154
    iput p1, p0, Lcom/vzw/location/SslClient;->mTimeout:I

    move v1, v2

    .line 155
    goto :goto_0

    .line 160
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v3, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 161
    iput p1, p0, Lcom/vzw/location/SslClient;->mTimeout:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/net/SocketException;
    const-string v2, "SslClient"

    const-string v3, "setTimeout(): SocketException:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public write([B)I
    .locals 5
    .parameter "buffer"

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/SslClient;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 215
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 216
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    if-eqz v1, :cond_0

    .line 223
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "SslClient"

    const-string v3, "write(): IOException:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    const/4 v2, 0x0

    .line 222
    if-eqz v1, :cond_0

    .line 223
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 226
    const-string v3, "SslClient"

    const-string v4, "write(): IOException closing stream:"

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 222
    if-eqz v1, :cond_1

    .line 223
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 221
    :cond_1
    :goto_2
    throw v2

    .line 225
    :catch_2
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "SslClient"

    const-string v4, "write(): IOException closing stream:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "SslClient"

    const-string v4, "write(): IOException closing stream:"

    goto :goto_1
.end method
