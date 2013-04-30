.class public Lcom/motorola/android/internal/encryption/FipsMCipherProvider;
.super Ljava/security/Provider;
.source "FipsMCipherProvider.java"


# static fields
.field static final AES_ALGORITHM:Ljava/lang/String; = "Cipher.AES"

.field static final FIPS_MOCANA_CIPHER_PROVIDER_INFO:Ljava/lang/String; = "FIPs certified cipher service provider for Mocana"

.field public static final FIPS_MOCANA_CIPHER_PROVIDER_NAME:Ljava/lang/String; = "FIPS_M_Cipher"

.field static final FIPS_MOCANA_CIPHER_PROVIDER_VERSION:D = 1.0


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v0, "FIPS_M_Cipher"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "FIPs certified cipher service provider for Mocana"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/android/internal/encryption/FipsMCipherProvider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipherProvider;->initService()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "version"
    .parameter "info"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "Cipher.AES"

    const-class v1, Lcom/motorola/android/internal/encryption/FipsMCipher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/encryption/FipsMCipherProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initService()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    new-instance v0, Ljava/security/Provider$Service;

    const-string v2, "Cipher"

    const-string v3, "AES"

    const-class v1, Lcom/motorola/android/internal/encryption/FipsMCipher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .local v0, service:Ljava/security/Provider$Service;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/FipsMCipherProvider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "FIPs certified cipher service provider for Mocana"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "FIPS_M_Cipher"

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    const-wide/high16 v0, 0x3ff0

    return-wide v0
.end method
