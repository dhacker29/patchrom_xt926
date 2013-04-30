.class public Lcom/motorola/android/internal/encryption/EncryptionManager;
.super Ljava/lang/Object;
.source "EncryptionManager.java"


# static fields
.field public static final ACTION_DEVICE_UNLOCKED:Ljava/lang/String; = "com.motorola.android.encryption.DEVICE_FIRST_UNLOCKED"

.field public static final APP_CALENDAR:Ljava/lang/String; = "com.android.providers.calendar"

.field public static final APP_CONTACTS:Ljava/lang/String; = "com.android.providers.contacts"

.field public static final APP_EMAIL:Ljava/lang/String; = "com.motorola.motoemail"

.field public static final APP_ENCRYPT_TEST:Ljava/lang/String; = "com.motorola.android.encrypt.test"

.field static final CONTACTS_APPS:[Ljava/lang/String; = null

.field static final DB_CALENDAR:Ljava/lang/String; = "calendar.db"

.field static final DB_CONTACTS:Ljava/lang/String; = "contacts2.db"

.field static final DB_EMAIL:Ljava/lang/String; = "email.db"

.field private static final DEBUG:Z = false

.field static final EMAIL_APPS:[Ljava/lang/String; = null

.field static final ENC_SETTING_GRANTED_APPS:Ljava/lang/String; = "enc_apps"

.field public static final ID_CALENDAR:I = 0x14

.field public static final ID_CONTACTS:I = 0x1e

.field public static final ID_EMAIL:I = 0xa

.field public static final ID_ENCRYPT_TEST:I = 0x58

.field public static final ID_SYSTEM:I = 0x63

.field public static final STATUS_FEATURE_NA:I = 0x65

.field public static final STATUS_INITIALIZING:I = 0x67

.field public static final STATUS_KEY_ERROR:I = 0x2

.field public static final STATUS_KEY_NOT_AVAILABLE:I = 0x0

.field public static final STATUS_KEY_READY:I = 0x1

.field public static final STATUS_READY:I = 0x68

.field public static final STATUS_UNKNOWN:I = 0x64

.field public static final SUPPORTED_APPS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EncryptionManager"

.field static final TEST_APPS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

.field private mInitStatus:I

.field private mSessionCount:I

.field private mSymKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.motorola.motoemail"

    aput-object v1, v0, v2

    const-string v1, "com.android.providers.calendar"

    aput-object v1, v0, v3

    const-string v1, "com.android.providers.contacts"

    aput-object v1, v0, v4

    const-string v1, "com.motorola.android.encrypt.test"

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/android/internal/encryption/EncryptionManager;->SUPPORTED_APPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.providers.contacts"

    aput-object v1, v0, v2

    const-string v1, "com.motorola.blur.providers.contacts"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/internal/encryption/EncryptionManager;->CONTACTS_APPS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.motorola.motoemail"

    aput-object v1, v0, v2

    const-string v1, "com.motorola.blur.email"

    aput-object v1, v0, v3

    const-string v1, "com.motorola.blur.home.message"

    aput-object v1, v0, v4

    const-string v1, "com.motorola.blur.calendar.sync.activesync"

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/android/internal/encryption/EncryptionManager;->EMAIL_APPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.motorola.android.encrypt.test"

    aput-object v1, v0, v2

    const-string v1, "com.motorola.encryption.mcts.test"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/internal/encryption/EncryptionManager;->TEST_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/android/internal/encryption/IEncryptionService;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSessionCount:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    iput-object p1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mCr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->initCipherProvider()V

    if-nez p2, :cond_0

    const-string v0, "EncryptionManager"

    const-string v1, "service can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v0}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getAppId()I
    .locals 3

    .prologue
    const/16 v1, 0x63

    .local v1, id:I
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, app:Ljava/lang/String;
    const-string v2, "com.motorola.motoemail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "com.android.providers.calendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x14

    goto :goto_0

    :cond_2
    const-string v2, "com.android.providers.contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x1e

    goto :goto_0

    :cond_3
    const-string v2, "com.motorola.android.encrypt.test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x58

    goto :goto_0
.end method

.method private getGrantedApps()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, retNames:[Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enc_apps"

    invoke-static {v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, appNames:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, names:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    move-object v2, v1

    .end local v1           #names:[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private getInputCipher([B)Ljavax/crypto/Cipher;
    .locals 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .local v4, result:Ljavax/crypto/Cipher;
    :try_start_0
    const-string v5, "AES"

    const-string v6, "FIPS_M_Cipher"

    invoke-static {v5, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v3, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v3, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v4, v0

    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "EncryptionManager"

    const-string v6, "No cipher found"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .local v2, e1:Ljava/security/NoSuchProviderException;
    const-string v5, "EncryptionManager"

    const-string v6, "No cipher provider found"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #e1:Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v1

    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v5, "EncryptionManager"

    const-string v6, "No cipher padding found"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v5, "EncryptionManager"

    const-string v6, "Cipher invalid key"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/encryption/EncryptionManager;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;
        }
    .end annotation

    .prologue
    const-string v1, "mot_encryption_service"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionManager;

    .local v0, result:Lcom/motorola/android/internal/encryption/EncryptionManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v2, "Failed to create EncryptionManager. Encryption service is null"

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private getOutputCipher([B)Ljavax/crypto/Cipher;
    .locals 11
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    .local v7, result:Ljavax/crypto/Cipher;
    :try_start_0
    const-string v8, "AES"

    const-string v9, "FIPS_M_Cipher"

    invoke-static {v8, v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v5, p1, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v5, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/16 v8, 0x10

    new-array v3, v8, [B

    .local v3, iv:[B
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->generateSymKey()[B

    move-result-object v6

    .local v6, random:[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-static {v6, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .local v4, ivParam:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v7, v0

    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #iv:[B
    .end local v4           #ivParam:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v6           #random:[B
    :goto_0
    return-object v7

    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "EncryptionManager"

    const-string v9, "No cipher found"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .local v2, e1:Ljava/security/NoSuchProviderException;
    const-string v8, "EncryptionManager"

    const-string v9, "No cipher provider found"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #e1:Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v1

    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v8, "EncryptionManager"

    const-string v9, "No cipher padding found"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v8, "EncryptionManager"

    const-string v9, "Cipher invalid key"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v1

    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v8, "EncryptionManager"

    const-string v9, "Cipher invalid parameter"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initCipherProvider()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/internal/encryption/FipsMCipherProvider;

    invoke-direct {v0}, Lcom/motorola/android/internal/encryption/FipsMCipherProvider;-><init>()V

    .local v0, provider:Lcom/motorola/android/internal/encryption/FipsMCipherProvider;
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method private isContactApp(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .local v5, result:Z
    sget-object v1, Lcom/motorola/android/internal/encryption/EncryptionManager;->CONTACTS_APPS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .end local v4           #name:Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->getGrantedApps()[Ljava/lang/String;

    move-result-object v0

    .local v0, appNames:[Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .restart local v4       #name:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .end local v0           #appNames:[Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return v5

    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v0       #appNames:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isEmailApp(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .local v5, result:Z
    sget-object v1, Lcom/motorola/android/internal/encryption/EncryptionManager;->EMAIL_APPS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .end local v4           #name:Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->getGrantedApps()[Ljava/lang/String;

    move-result-object v0

    .local v0, appNames:[Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .restart local v4       #name:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .end local v0           #appNames:[Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return v5

    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v0       #appNames:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isTestApp(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .local v5, result:Z
    sget-object v1, Lcom/motorola/android/internal/encryption/EncryptionManager;->TEST_APPS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .end local v4           #name:Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->getGrantedApps()[Ljava/lang/String;

    move-result-object v0

    .local v0, appNames:[Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .restart local v4       #name:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .end local v0           #appNames:[Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return v5

    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v0       #appNames:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public attachDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "srcDbConn"
    .parameter "attachDbFileName"
    .parameter "attachDbName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;,
            Lcom/motorola/android/internal/encryption/EncryptionKeyException;,
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    iget v12, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    const/16 v13, 0x65

    if-ne v12, v13, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    iget-object v12, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, app:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, match:Z
    sget-object v2, Lcom/motorola/android/internal/encryption/EncryptionManager;->SUPPORTED_APPS:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v11, v2, v4

    .local v11, supportedApp:Ljava/lang/String;
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v7, 0x1

    .end local v11           #supportedApp:Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    .restart local v11       #supportedApp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v11           #supportedApp:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isAppEncryptionEnabled(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    iget-object v12, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v12, :cond_5

    const-string v12, "EncryptionManager"

    const-string v13, "attachDbConn failed. Encryption Service is null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v13, "EncryptionService is null"

    const/16 v14, 0x64

    invoke-direct {v12, v13, v14}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v12

    :cond_5
    const/4 v8, 0x0

    .local v8, result:Z
    :try_start_0
    iget-object v12, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v12, v1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getAppKey(Ljava/lang/String;)[B

    move-result-object v5

    .local v5, key:[B
    if-nez v5, :cond_6

    const-string v12, "EncryptionManager"

    const-string v13, "startDbConn failed due to null key"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/motorola/android/internal/encryption/EncryptionKeyException;

    const-string v13, "key not available"

    invoke-direct {v12, v13}, Lcom/motorola/android/internal/encryption/EncryptionKeyException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v5           #key:[B
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    const-string v12, "EncryptionManager"

    const-string v13, "remote exception when invoking getDataKey"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v12, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v13, "remote exception getting key"

    const/16 v14, 0x64

    invoke-direct {v12, v13, v3, v14}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v12

    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v5       #key:[B
    :cond_6
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ATTACH DATABASE \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' AS "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " KEY \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/motorola/android/internal/encryption/EncryptionUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, sql:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v5           #key:[B
    .end local v9           #sql:Ljava/lang/String;
    :catch_1
    move-exception v10

    .local v10, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v12, "EncryptionManager"

    const-string v13, "SQLite exception when invoking attach sql"

    invoke-static {v12, v13, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v10
.end method

.method public decryptData([B)[B
    .locals 4
    .parameter "encData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;,
            Lcom/motorola/android/internal/encryption/EncryptionKeyException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x65

    iget v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    array-length v1, p1

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->getHeaderSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    :cond_2
    const-string v1, "EncryptionManager"

    const-string v2, "decryptData: data buffer doesn\'t contain enough header data; invalid data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v2, "data buffer doesn\'t contain enough header data or input is null; invalid input data"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    .local v0, plainData:[B
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSymKey:[B

    if-nez v1, :cond_4

    const-string v1, "EncryptionManager"

    const-string v2, "decryptData: key is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/internal/encryption/EncryptionKeyException;

    const-string v2, "key not available"

    invoke-direct {v1, v2}, Lcom/motorola/android/internal/encryption/EncryptionKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSymKey:[B

    array-length v2, p1

    invoke-static {v1, p1, v2}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->decryptData([B[BI)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "EncryptionManager"

    const-string v2, "decryptData: decryption returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v2, "decryption returned null"

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public encryptData([B)[B
    .locals 6
    .parameter "plainData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;,
            Lcom/motorola/android/internal/encryption/EncryptionKeyException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x65

    iget v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    if-ne v2, v5, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "EncryptionManager"

    const-string v3, "encryptData input buffer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, encResult:[B
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSymKey:[B

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->getAppId()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSymKey:[B

    array-length v4, p1

    invoke-static {v2, v3, p1, v4}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->encryptData(I[B[BI)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "EncryptionManager"

    const-string v3, "encryptData: encryption returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v3, "encrypted result is null"

    invoke-direct {v2, v3, v5}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_3
    new-instance v1, Lcom/motorola/android/internal/encryption/EncryptionKeyException;

    const-string v2, "no key available for encryption"

    invoke-direct {v1, v2}, Lcom/motorola/android/internal/encryption/EncryptionKeyException;-><init>(Ljava/lang/String;)V

    .local v1, ex:Lcom/motorola/android/internal/encryption/EncryptionKeyException;
    const-string v2, "EncryptionManager"

    const-string v3, "encryptData: encryption key is null. encryption failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method public endDbConn(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .parameter "dbHelper"

    .prologue
    return-void
.end method

.method public endSession()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_1

    const-string v1, "EncryptionManager"

    const-string v2, "endSession failed. EncryptionService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSessionCount:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSessionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSessionCount:I

    :cond_2
    iget v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSessionCount:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSymKey:[B

    :cond_3
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/motorola/android/internal/encryption/IEncryptionService;->endSession(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EncryptionManager"

    const-string v2, "remote exception when invoking endSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getEncryptedInputStream(Ljava/io/InputStream;)Lcom/motorola/android/internal/encryption/EncryptedInputStream;
    .locals 10
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;,
            Lcom/motorola/android/internal/encryption/EncryptionKeyException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x65

    const/16 v8, 0x64

    iget v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    if-ne v6, v9, :cond_1

    new-instance v3, Lcom/motorola/android/internal/encryption/EncryptedInputStream;

    invoke-direct {v3, p1}, Lcom/motorola/android/internal/encryption/EncryptedInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    .local v0, app:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isEmailApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v0, "com.motorola.motoemail"

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v5

    :cond_3
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isAppEncryptionEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v3, Lcom/motorola/android/internal/encryption/EncryptedInputStream;

    invoke-direct {v3, p1}, Lcom/motorola/android/internal/encryption/EncryptedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isContactApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v0, "com.android.providers.contacts"

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isTestApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "com.motorola.android.encrypt.test"

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v6, :cond_7

    const-string v6, "EncryptionManager"

    const-string v7, "getEncryptedInputStream failed. Encryption Service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v7, "EncryptionService is null"

    invoke-direct {v6, v7, v8}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_7
    const/4 v3, 0x0

    .local v3, isResult:Lcom/motorola/android/internal/encryption/EncryptedInputStream;
    const/4 v4, 0x0

    .local v4, key:[B
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v6, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getAppKey(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_8

    const-string v6, "EncryptionManager"

    const-string v7, "getEncryptedInputStream failed due to null key exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionKeyException;

    const-string v7, "no key available for encryption"

    invoke-direct {v6, v7}, Lcom/motorola/android/internal/encryption/EncryptionKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "EncryptionManager"

    const-string v7, "remote exception when invoking getDataKey"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v7, "remote exception when getting key"

    invoke-direct {v6, v7, v2, v8}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_8
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/encryption/EncryptionManager;->getInputCipher([B)Ljavax/crypto/Cipher;

    move-result-object v1

    .local v1, cipher:Ljavax/crypto/Cipher;
    new-instance v3, Lcom/motorola/android/internal/encryption/EncryptedInputStream;

    .end local v3           #isResult:Lcom/motorola/android/internal/encryption/EncryptedInputStream;
    invoke-direct {v3, p1, v1}, Lcom/motorola/android/internal/encryption/EncryptedInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .restart local v3       #isResult:Lcom/motorola/android/internal/encryption/EncryptedInputStream;
    if-nez v3, :cond_0

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v7, "input cipher is null"

    invoke-direct {v6, v7, v9}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method public getEncryptedOutputStream(Ljava/io/OutputStream;)Lcom/motorola/android/internal/encryption/EncryptedOutputStream;
    .locals 10
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;,
            Lcom/motorola/android/internal/encryption/EncryptionKeyException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x65

    const/16 v8, 0x64

    iget v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    if-ne v6, v9, :cond_1

    new-instance v4, Lcom/motorola/android/internal/encryption/EncryptedOutputStream;

    invoke-direct {v4, p1}, Lcom/motorola/android/internal/encryption/EncryptedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v0, 0x0

    .local v0, app:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isEmailApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v0, "com.motorola.motoemail"

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v5

    :cond_3
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isAppEncryptionEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "EncryptionManager"

    const-string v7, "app encryption not enabled. returning pass-thru stream"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/motorola/android/internal/encryption/EncryptedOutputStream;

    invoke-direct {v4, p1}, Lcom/motorola/android/internal/encryption/EncryptedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isContactApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v0, "com.android.providers.contacts"

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isTestApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "com.motorola.android.encrypt.test"

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v6, :cond_7

    const-string v6, "EncryptionManager"

    const-string v7, "getEncryptedOutputStream failed. Encryption Service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v7, "EncryptionService is null"

    invoke-direct {v6, v7, v8}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_7
    const/4 v4, 0x0

    .local v4, osResult:Lcom/motorola/android/internal/encryption/EncryptedOutputStream;
    const/4 v3, 0x0

    .local v3, key:[B
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v6, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getAppKey(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_8

    const-string v6, "EncryptionManager"

    const-string v7, "getEncryptedOutputStream failed due to null key"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionKeyException;

    const-string v7, "no key available for decryption"

    invoke-direct {v6, v7}, Lcom/motorola/android/internal/encryption/EncryptionKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "EncryptionManager"

    const-string v7, "remote exception when invoking getDataKey"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v7, "remote exception getting key"

    invoke-direct {v6, v7, v2, v8}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_8
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/encryption/EncryptionManager;->getOutputCipher([B)Ljavax/crypto/Cipher;

    move-result-object v1

    .local v1, cipher:Ljavax/crypto/Cipher;
    new-instance v4, Lcom/motorola/android/internal/encryption/EncryptedOutputStream;

    .end local v4           #osResult:Lcom/motorola/android/internal/encryption/EncryptedOutputStream;
    invoke-direct {v4, p1, v1}, Lcom/motorola/android/internal/encryption/EncryptedOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .restart local v4       #osResult:Lcom/motorola/android/internal/encryption/EncryptedOutputStream;
    if-nez v4, :cond_0

    new-instance v6, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v7, "input cipher is null"

    invoke-direct {v6, v7, v9}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method public getKeyStatus(Ljava/lang/String;)I
    .locals 5
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    const/16 v1, 0x64

    .local v1, retStatus:I
    iget v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v2, :cond_1

    const-string v2, "EncryptionManager"

    const-string v3, "getKeyStatus unknown. EncryptionService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v3, "EncryptionService is null"

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v2, p1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getKeyStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EncryptionManager"

    const-string v3, "remote exception when invoking getKeyStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v3, "remote exception when getting key"

    invoke-direct {v2, v3, v0, v4}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getServiceStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    iget v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x64

    .local v1, retStatus:I
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v2, :cond_1

    const-string v2, "EncryptionManager"

    const-string v3, "getServiceStatus failed. EncryptionService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v3, "EncryptionService is null"

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v2}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EncryptionManager"

    const-string v3, "remote exception when invoking getStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v3, "remote exception getting service status"

    invoke-direct {v2, v3, v0, v4}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public isAppEncryptionEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"

    .prologue
    iget v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getAppEncryptionProperty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDataProtectionEnabled()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getDataProtectionEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mSessionCount:I

    return-void
.end method

.method public startDbConn(Landroid/database/sqlite/SQLiteOpenHelper;)Z
    .locals 13
    .parameter "dbHelper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;,
            Lcom/motorola/android/internal/encryption/EncryptionKeyException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x64

    const/4 v8, 0x1

    iget v10, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mInitStatus:I

    const/16 v11, 0x65

    if-ne v10, v11, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v10, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .local v7, pkgName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, app:Ljava/lang/String;
    iget-object v10, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isEmailApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v0, "com.motorola.motoemail"

    :goto_1
    const/4 v6, 0x0

    .local v6, match:Z
    sget-object v1, Lcom/motorola/android/internal/encryption/EncryptionManager;->SUPPORTED_APPS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v9, v1, v3

    .local v9, supportedApp:Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v6, 0x1

    .end local v9           #supportedApp:Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_7

    const-string v10, "EncryptionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encryption for app not supported, returning true for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #match:Z
    :cond_3
    iget-object v10, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isContactApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v0, "com.android.providers.contacts"

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isTestApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v0, "com.motorola.android.encrypt.test"

    goto :goto_1

    :cond_5
    move-object v0, v7

    goto :goto_1

    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #match:Z
    .restart local v9       #supportedApp:Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v9           #supportedApp:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/EncryptionManager;->isAppEncryptionEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v10, :cond_8

    const-string v10, "EncryptionManager"

    const-string v11, "startDbConn failed. Encryption Service is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v11, "EncryptionService is null"

    invoke-direct {v10, v11, v12}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v10

    :cond_8
    const/4 v8, 0x0

    .local v8, result:Z
    :try_start_0
    iget-object v10, p0, Lcom/motorola/android/internal/encryption/EncryptionManager;->mEncryptionService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v10, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getAppKey(Ljava/lang/String;)[B

    move-result-object v4

    .local v4, key:[B
    if-nez v4, :cond_0

    const-string v10, "EncryptionManager"

    const-string v11, "startDbConn failed due to null key"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/motorola/android/internal/encryption/EncryptionKeyException;

    const-string v11, "key not available"

    invoke-direct {v10, v11}, Lcom/motorola/android/internal/encryption/EncryptionKeyException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #key:[B
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v10, "EncryptionManager"

    const-string v11, "remote exception when invoking getDataKey"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v10, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v11, "remote exception getting key"

    invoke-direct {v10, v11, v2, v12}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v10
.end method
