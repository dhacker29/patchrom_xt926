.class public Lcom/vzw/location/PeerTrustManager;
.super Ljava/lang/Object;
.source "PeerTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PeerTrustManager"


# instance fields
.field private mPublicKeys:[Ljava/security/PublicKey;

.field private mTrusteds:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 6
    .parameter "keystore"

    .prologue
    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "PeerTrustManager"

    const-string v4, "PeerTrustManager(): null or zero-length parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/security/KeyStore;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lcom/vzw/location/PeerTrustManager;->mTrusteds:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/KeyStore;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/PublicKey;

    iput-object v3, p0, Lcom/vzw/location/PeerTrustManager;->mPublicKeys:[Ljava/security/PublicKey;

    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, cert:Ljava/security/cert/Certificate;
    iget-object v3, p0, Lcom/vzw/location/PeerTrustManager;->mTrusteds:[Ljava/security/cert/X509Certificate;

    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0           #cert:Ljava/security/cert/Certificate;
    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/vzw/location/PeerTrustManager;->mPublicKeys:[Ljava/security/PublicKey;

    iget-object v4, p0, Lcom/vzw/location/PeerTrustManager;->mTrusteds:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PeerTrustManager"

    const-string v4, "PeerTrustManager(): initialization failure:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/vzw/location/PeerTrustManager;->mTrusteds:[Ljava/security/cert/X509Certificate;

    iput-object v5, p0, Lcom/vzw/location/PeerTrustManager;->mPublicKeys:[Ljava/security/PublicKey;

    goto :goto_0
.end method

.method private isValidCert(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .parameter "cert"

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "PeerTrustManager"

    const-string v1, "checkClientTrusted(): null or zero-length parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or zero-length parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/vzw/location/PeerTrustManager;->mPublicKeys:[Ljava/security/PublicKey;

    if-nez v0, :cond_2

    const-string v0, "PeerTrustManager"

    const-string v1, "checkClientTrusted(): initialization failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "initialization failure"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 8
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    array-length v6, p1

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "PeerTrustManager"

    const-string v7, "checkServerTrusted(): null or zero-length parameter"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "null or zero-length parameter"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lcom/vzw/location/PeerTrustManager;->mPublicKeys:[Ljava/security/PublicKey;

    if-nez v6, :cond_2

    const-string v6, "PeerTrustManager"

    const-string v7, "checkServerTrusted(): initialization failure"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "initialization failure"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .local v5, peerCert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v5}, Lcom/vzw/location/PeerTrustManager;->isValidCert(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "PeerTrustManager"

    const-string v7, "checkServerTrusted(): peer certificate expired"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "peer certificate expired"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iget-object v0, p0, Lcom/vzw/location/PeerTrustManager;->mPublicKeys:[Ljava/security/PublicKey;

    .local v0, arr$:[Ljava/security/PublicKey;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .local v3, key:Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {v5, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v6, "PeerTrustManager"

    const-string v7, "checkServerTrusted(): peer certificate ok"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #key:Ljava/security/PublicKey;
    :cond_4
    const-string v6, "PeerTrustManager"

    const-string v7, "checkServerTrusted(): peer certificate unmatched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "peer certificate unmatched"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/PeerTrustManager;->mTrusteds:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
