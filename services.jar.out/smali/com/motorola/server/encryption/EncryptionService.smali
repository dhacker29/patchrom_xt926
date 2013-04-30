.class public Lcom/motorola/server/encryption/EncryptionService;
.super Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;
.source "EncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/encryption/EncryptionService$1;,
        Lcom/motorola/server/encryption/EncryptionService$AdminHandler;,
        Lcom/motorola/server/encryption/EncryptionService$Key;,
        Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;,
        Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;
    }
.end annotation


# static fields
.field private static final BACKUP_PASSWORD:Ljava/lang/String; = "sehorsIsWHaT"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SALT:[B = null

.field private static final ENCRYPTION_ADMIN_THREAD:Ljava/lang/String; = "encryption_admin_thr"

.field private static final ENC_SETTING_SYM_KEY:Ljava/lang/String; = "enc_setting_1"

.field private static final ENC_SETTING_SYM_KEY_BACKUP:Ljava/lang/String; = "enc_setting_4"

.field private static final ENC_SETTING_SYM_KEY_BLOB:Ljava/lang/String; = "enc_setting_5"

.field private static final ENC_SETTING_SYM_KEY_RECOVERY:Ljava/lang/String; = "enc_setting_3"

.field private static final ENC_SETTING_SYM_KEY_SIZE:Ljava/lang/String; = "enc_setting_2"

.field private static final ITERATIONS:I = 0x64

.field private static final KEY_SIZE_256:I = 0x100

.field private static final MSG_INITIALIZE:I = 0x6a

.field private static final MSG_NEW_PASSWORD_SAVED:I = 0x66

.field private static final MSG_ON_SCREEN_LOCK:I = 0x69

.field private static final MSG_PASSWORD_FAILED:I = 0x65

.field private static final MSG_PASSWORD_VERIFIED:I = 0x64

.field private static final MSG_RECOV_PASSWORD_SAVED:I = 0x68

.field private static final MSG_RECOV_PASSWORD_VERIFIED:I = 0x67

.field private static final SHA256_SIZE_32_BYTE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "EncryptionService"

.field private static sEncryptedKeyLen:I

.field private static use_mocana:Z


# instance fields
.field private mAdminHandler:Landroid/os/Handler;

.field private mAppKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/server/encryption/EncryptionService$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentPassword:Ljava/lang/String;

.field private mCurrentPasswordHash:[B

.field private mDataProtectionEnabled:Z

.field private mDefaultPasswordHash:[B

.field private mDownGrade:Z

.field private mFirstUnlocked:Z

.field private mInRecoveryMode:Z

.field private mInitDone:Z

.field private mKeyMode:I

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

.field private mNewPassword:Ljava/lang/String;

.field private mStatus:I

.field private mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

.field private mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sput v1, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    .line 81
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/server/encryption/EncryptionService;->DEFAULT_SALT:[B

    .line 127
    sput-boolean v1, Lcom/motorola/server/encryption/EncryptionService;->use_mocana:Z

    return-void

    .line 81
    nop

    :array_0
    .array-data 0x1
        0x17t
        0x22t
        0x8dt
        0x3t
        0x88t
        0xb6t
        0x1dt
        0x18t
        0x25t
        0xc0t
        0x62t
        0x36t
        0x1ft
        0x38t
        0xcct
        0x6bt
        0x25t
        0xc0t
        0x62t
        0x36t
        0x1ft
        0x38t
        0xcct
        0x6bt
        0x17t
        0x22t
        0x8dt
        0x3t
        0x88t
        0xb6t
        0x1dt
        0x18t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 555
    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;-><init>()V

    .line 49
    iput-boolean v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mInitDone:Z

    .line 52
    iput-boolean v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mInRecoveryMode:Z

    .line 53
    iput-boolean v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mFirstUnlocked:Z

    .line 54
    iput-boolean v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mDataProtectionEnabled:Z

    .line 56
    iput v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    .line 57
    iput-boolean v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mDownGrade:Z

    .line 60
    iput-object v7, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 112
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mAppKeys:Ljava/util/HashMap;

    .line 114
    sget-object v3, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Locked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    .line 115
    const/16 v3, 0x67

    iput v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    .line 556
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mContext:Landroid/content/Context;

    .line 560
    const/4 v2, 0x0

    .line 561
    .local v2, libFile:Ljava/io/File;
    sget-boolean v3, Lcom/motorola/server/encryption/EncryptionService;->use_mocana:Z

    if-eqz v3, :cond_2

    .line 562
    new-instance v2, Ljava/io/File;

    .end local v2           #libFile:Ljava/io/File;
    const-string v3, "/system/lib/libdataencrypt.so"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v2       #libFile:Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 570
    sget-boolean v3, Lcom/motorola/server/encryption/EncryptionService;->use_mocana:Z

    if-nez v3, :cond_3

    .line 572
    iput-boolean v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mDataProtectionEnabled:Z

    .line 573
    const-string v3, "sehorsIsWHaT"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/encryption/NativeEncryptOpenSSL;->getHashOpenSSL([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    .line 574
    new-instance v3, Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-direct {v3, p0, v7}, Lcom/motorola/server/encryption/EncryptionService$Key;-><init>(Lcom/motorola/server/encryption/EncryptionService;Lcom/motorola/server/encryption/EncryptionService$1;)V

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    .line 575
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    sget-object v5, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_Public:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    iput-object v5, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mType:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    .line 576
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v4, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    .line 577
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-boolean v4, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    .line 578
    new-instance v3, Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-direct {v3, p0, v7}, Lcom/motorola/server/encryption/EncryptionService$Key;-><init>(Lcom/motorola/server/encryption/EncryptionService;Lcom/motorola/server/encryption/EncryptionService$1;)V

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    .line 579
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    sget-object v5, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_Public:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    iput-object v5, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mType:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    .line 580
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v4, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    .line 581
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-boolean v4, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    .line 625
    :goto_1
    new-instance v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    invoke-direct {v0, p0}, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;-><init>(Lcom/motorola/server/encryption/EncryptionService;)V

    .line 626
    .local v0, adminThread:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;
    invoke-virtual {v0}, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->start()V

    .line 628
    iget-boolean v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mInitDone:Z

    if-nez v3, :cond_0

    .line 629
    monitor-enter v0

    .line 632
    const-wide/16 v3, 0x7530

    :try_start_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :cond_0
    iget-boolean v3, v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->mReady:Z

    if-nez v3, :cond_1

    .line 640
    const-string v3, "EncryptionService"

    const-string v4, "unable to start adminThread"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v0           #adminThread:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;
    :cond_1
    :goto_3
    return-void

    .line 565
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2           #libFile:Ljava/io/File;
    const-string v3, "/system/lib/libdataencrypt_openssl.so"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #libFile:Ljava/io/File;
    goto :goto_0

    .line 585
    :cond_3
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getDataProtectionEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mDataProtectionEnabled:Z

    .line 586
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getKeyType()I

    move-result v3

    iput v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    .line 592
    const-string v3, "sehorsIsWHaT"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/encryption/NativeEncryptOpenSSL;->getHashOpenSSL([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    .line 594
    new-instance v3, Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-direct {v3, p0, v7}, Lcom/motorola/server/encryption/EncryptionService$Key;-><init>(Lcom/motorola/server/encryption/EncryptionService;Lcom/motorola/server/encryption/EncryptionService$1;)V

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    .line 595
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    sget-object v6, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_Public:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    iput-object v6, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mType:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    .line 597
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v4, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    .line 598
    iget-object v6, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    const-string v3, "com.android.providers.calendar"

    invoke-static {v3}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getAppEncryptionProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.providers.contacts"

    invoke-static {v3}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getAppEncryptionProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    move v3, v5

    :goto_4
    iput-boolean v3, v6, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    .line 602
    new-instance v3, Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-direct {v3, p0, v7}, Lcom/motorola/server/encryption/EncryptionService$Key;-><init>(Lcom/motorola/server/encryption/EncryptionService;Lcom/motorola/server/encryption/EncryptionService$1;)V

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    .line 605
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    sget-object v6, Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;->Symmetric_Public:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    iput-object v6, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mType:Lcom/motorola/server/encryption/EncryptionService$KEY_TYPE;

    .line 606
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v4, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    .line 607
    iget v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    if-ne v3, v5, :cond_5

    .line 609
    iput-boolean v5, p0, Lcom/motorola/server/encryption/EncryptionService;->mDownGrade:Z

    .line 610
    iput v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    .line 613
    :cond_5
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    const-string v6, "com.motorola.motoemail"

    invoke-static {v6}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getAppEncryptionProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.motorola.android.encrypt.test"

    invoke-static {v6}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getAppEncryptionProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    iput-boolean v4, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    .line 618
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mAppKeys:Ljava/util/HashMap;

    const-string v4, "com.android.providers.contacts"

    iget-object v5, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mAppKeys:Ljava/util/HashMap;

    const-string v4, "com.android.providers.calendar"

    iget-object v5, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mAppKeys:Ljava/util/HashMap;

    const-string v4, "com.motorola.motoemail"

    iget-object v5, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mAppKeys:Ljava/util/HashMap;

    const-string v4, "com.motorola.android.encrypt.test"

    iget-object v5, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    move v3, v4

    .line 598
    goto :goto_4

    .line 633
    .restart local v0       #adminThread:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;
    :catch_0
    move-exception v1

    .line 635
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "EncryptionService"

    const-string v4, "wait for adminThread init interrupted"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 637
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 643
    .end local v0           #adminThread:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;
    :cond_9
    const-string v3, "EncryptionService"

    const-string v4, "Encryption service created but native lib not found or feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/16 v3, 0x65

    iput v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    goto/16 :goto_3
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/motorola/server/encryption/EncryptionService;->use_mocana:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/server/encryption/EncryptionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/motorola/server/encryption/EncryptionService;->init()V

    return-void
.end method

.method static synthetic access$202(Lcom/motorola/server/encryption/EncryptionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mInitDone:Z

    return p1
.end method

.method static synthetic access$302(Lcom/motorola/server/encryption/EncryptionService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private createKey(Lcom/motorola/server/encryption/EncryptionService$Key;[B)Z
    .locals 5
    .parameter "key"
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 771
    const/4 v1, 0x0

    .line 773
    .local v1, result:Z
    if-nez p2, :cond_0

    .line 774
    const-string v3, "EncryptionService"

    const-string v4, "failed to pbkdf2 pass is null. no key generated"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 793
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 777
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    const/16 v3, 0x100

    invoke-direct {p0, v3}, Lcom/motorola/server/encryption/EncryptionService;->generateKey(I)[B

    move-result-object v0

    .line 778
    .local v0, random:[B
    if-nez v0, :cond_1

    .line 779
    const-string v3, "EncryptionService"

    const-string v4, "failed to create key. Encryption service in error condition"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 793
    .restart local v2       #result:I
    goto :goto_0

    .line 781
    .end local v2           #result:I
    :cond_1
    iput-object v0, p1, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    .line 782
    invoke-direct {p0, v0, p2}, Lcom/motorola/server/encryption/EncryptionService;->encryptSymKey([B[B)[B

    move-result-object v3

    iput-object v3, p1, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 783
    iput-boolean v4, p1, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    .line 784
    iput v4, p1, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 785
    const/4 v1, 0x1

    .line 786
    const-string v3, "mot.enc.debug.key"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method private decryptSymKey([B[B)[B
    .locals 13
    .parameter "encKey"
    .parameter "passbuf"

    .prologue
    .line 838
    sget-object v9, Lcom/motorola/server/encryption/EncryptionService;->DEFAULT_SALT:[B

    .line 839
    .local v9, salt:[B
    const/16 v5, 0x64

    .line 840
    .local v5, iter:I
    const/4 v7, 0x0

    .line 841
    .local v7, plain:[B
    const/4 v8, 0x0

    .line 842
    .local v8, plainKey:[B
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 844
    .local v3, encValue:[B
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 845
    :cond_0
    const-string v10, "EncryptionService"

    const-string v11, "decryptSymKey failed. null key or null passbuf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v10, 0x0

    .line 868
    :goto_0
    return-object v10

    .line 848
    :cond_1
    invoke-static {p2}, Lcom/motorola/android/internal/encryption/EncryptionUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 849
    .local v6, password:Ljava/lang/String;
    invoke-static {v6, v9, v5}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->createKeyPBKDF2(Ljava/lang/String;[BI)[B

    move-result-object v0

    .line 850
    .local v0, dKey:[B
    if-eqz v0, :cond_2

    array-length v10, v0

    if-lez v10, :cond_2

    .line 851
    array-length v10, v3

    invoke-static {v0, v3, v10}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->decryptData([B[BI)[B

    move-result-object v7

    .line 852
    if-eqz v7, :cond_4

    array-length v10, v7

    const/16 v11, 0x40

    if-ne v10, v11, :cond_4

    .line 854
    const/16 v10, 0x20

    new-array v1, v10, [B

    .line 855
    .local v1, decKey:[B
    const/16 v10, 0x20

    new-array v2, v10, [B

    .line 856
    .local v2, decdHash:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-static {v7, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    const/16 v10, 0x20

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-static {v7, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    array-length v10, v1

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->getHash([BII)[B

    move-result-object v4

    .line 859
    .local v4, hash:[B
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 860
    move-object v8, v1

    .end local v1           #decKey:[B
    .end local v2           #decdHash:[B
    .end local v4           #hash:[B
    :cond_2
    :goto_1
    move-object v10, v8

    .line 868
    goto :goto_0

    .line 862
    .restart local v1       #decKey:[B
    .restart local v2       #decdHash:[B
    .restart local v4       #hash:[B
    :cond_3
    const-string v10, "EncryptionService"

    const-string v11, "Error decrypting key. Hash mismatch"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 865
    .end local v1           #decKey:[B
    .end local v2           #decdHash:[B
    .end local v4           #hash:[B
    :cond_4
    const-string v10, "EncryptionService"

    const-string v11, "Error decrypting key. null or incorrect length returned"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private encryptSymKey([B[B)[B
    .locals 10
    .parameter "dataKey"
    .parameter "passbuf"

    .prologue
    const/4 v9, 0x0

    .line 805
    sget-object v6, Lcom/motorola/server/encryption/EncryptionService;->DEFAULT_SALT:[B

    .line 806
    .local v6, salt:[B
    const/16 v4, 0x64

    .line 807
    .local v4, iter:I
    const/4 v2, 0x0

    .line 809
    .local v2, encKey:[B
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 810
    :cond_0
    const-string v7, "EncryptionService"

    const-string v8, "encryptSymKey failed. null key or null passbuf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v7, 0x0

    .line 833
    :goto_0
    return-object v7

    .line 814
    :cond_1
    invoke-static {p2}, Lcom/motorola/android/internal/encryption/EncryptionUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 815
    .local v5, password:Ljava/lang/String;
    invoke-static {v5, v6, v4}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->createKeyPBKDF2(Ljava/lang/String;[BI)[B

    move-result-object v0

    .line 817
    .local v0, dKey:[B
    if-eqz v0, :cond_2

    array-length v7, v0

    if-lez v7, :cond_2

    .line 820
    array-length v7, p1

    invoke-static {p1, v7, v9}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->getHash([BII)[B

    move-result-object v3

    .line 821
    .local v3, hash:[B
    if-eqz v3, :cond_3

    .line 823
    array-length v7, v3

    array-length v8, p1

    add-int/2addr v7, v8

    new-array v1, v7, [B

    .line 824
    .local v1, data:[B
    array-length v7, v3

    invoke-static {v3, v9, v1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    array-length v7, v3

    array-length v8, p1

    invoke-static {p1, v9, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    const/16 v7, 0x63

    array-length v8, v1

    invoke-static {v7, v0, v1, v8}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->encryptData(I[B[BI)[B

    move-result-object v2

    .end local v1           #data:[B
    .end local v3           #hash:[B
    :cond_2
    :goto_1
    move-object v7, v2

    .line 833
    goto :goto_0

    .line 830
    .restart local v3       #hash:[B
    :cond_3
    const-string v7, "EncryptionService"

    const-string v8, "error generating hash for key"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private generateKey(I)[B
    .locals 4
    .parameter "octetlen"

    .prologue
    .line 476
    const/4 v1, 0x0

    .line 479
    .local v1, key:[B
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->generateSymKey()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EncryptionService"

    const-string v3, "exception generated calling native generateSymKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->init()V

    .line 652
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->getEncryptedSize(I)I

    move-result v0

    sput v0, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    .line 655
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    sget v1, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 656
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-object v0, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 657
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    sget v1, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 658
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-object v0, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 660
    iget-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mDataProtectionEnabled:Z

    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/motorola/server/encryption/EncryptionService;->initKeys()V

    .line 663
    :cond_0
    const/16 v0, 0x68

    iput v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    .line 664
    return-void
.end method

.method private initKey(Lcom/motorola/server/encryption/EncryptionService$Key;I)Z
    .locals 6
    .parameter "key"
    .parameter "keyMode"

    .prologue
    .line 667
    iget-boolean v3, p1, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    .line 669
    .local v3, result:Z
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    .line 673
    .local v2, passbuf:[B
    :goto_0
    iget-boolean v4, p1, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 674
    invoke-direct {p0, p1, v2}, Lcom/motorola/server/encryption/EncryptionService;->createKey(Lcom/motorola/server/encryption/EncryptionService$Key;[B)Z

    move-result v1

    .line 675
    .local v1, keyOk:Z
    if-eqz v1, :cond_3

    .line 676
    invoke-direct {p0}, Lcom/motorola/server/encryption/EncryptionService;->saveKeysToTPAPI()I

    move-result v0

    .line 677
    .local v0, code:I
    iput p2, p1, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    .line 678
    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 683
    .end local v0           #code:I
    .end local v1           #keyOk:Z
    :cond_0
    :goto_1
    return v3

    .line 669
    .end local v2           #passbuf:[B
    :cond_1
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    goto :goto_0

    .line 678
    .restart local v0       #code:I
    .restart local v1       #keyOk:Z
    .restart local v2       #passbuf:[B
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 680
    .end local v0           #code:I
    :cond_3
    const-string v4, "EncryptionService"

    const-string v5, "failed to create keys for first time. Encryption service in error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initKeys()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 687
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    if-nez v4, :cond_1

    .line 688
    const-string v4, "EncryptionService"

    const-string v5, "default hash is null.Encryption service in error. No keys can be created"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    invoke-direct {p0}, Lcom/motorola/server/encryption/EncryptionService;->loadKeysFromTPAPI()[B

    move-result-object v2

    .line 693
    .local v2, keyBlob:[B
    if-nez v2, :cond_3

    .line 695
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v4, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    if-eqz v4, :cond_2

    .line 696
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-direct {p0, v4, v6}, Lcom/motorola/server/encryption/EncryptionService;->initKey(Lcom/motorola/server/encryption/EncryptionService$Key;I)Z

    move-result v3

    .line 698
    .local v3, keyOk:Z
    if-nez v3, :cond_2

    .line 699
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v7, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 702
    .end local v3           #keyOk:Z
    :cond_2
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v4, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    if-eqz v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-direct {p0, v4, v6}, Lcom/motorola/server/encryption/EncryptionService;->initKey(Lcom/motorola/server/encryption/EncryptionService$Key;I)Z

    move-result v3

    .line 707
    .restart local v3       #keyOk:Z
    if-nez v3, :cond_0

    .line 708
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v7, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    goto :goto_0

    .line 711
    .end local v3           #keyOk:Z
    :cond_3
    array-length v4, v2

    sget v5, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    mul-int/lit8 v5, v5, 0x2

    if-eq v4, v5, :cond_4

    .line 712
    const-string v4, "EncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key blob is corrupt.Length doesn\'t match expected("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v7, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 715
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v7, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    goto :goto_0

    .line 717
    :cond_4
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v4, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    if-eqz v4, :cond_5

    .line 718
    sget v4, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    new-array v0, v4, [B

    .line 719
    .local v0, encValue:[B
    array-length v4, v0

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, key:[B
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    invoke-direct {p0, v0, v4}, Lcom/motorola/server/encryption/EncryptionService;->decryptSymKey([B[B)[B

    move-result-object v1

    .line 722
    if-nez v1, :cond_6

    .line 723
    const-string v4, "EncryptionService"

    const-string v5, "Unexpected failure. Failed to decrypt public key. key is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v7, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 733
    .end local v0           #encValue:[B
    .end local v1           #key:[B
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v4, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    if-eqz v4, :cond_0

    .line 735
    iget-boolean v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mDownGrade:Z

    if-eqz v4, :cond_8

    .line 737
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-direct {p0, v4, v6}, Lcom/motorola/server/encryption/EncryptionService;->initKey(Lcom/motorola/server/encryption/EncryptionService$Key;I)Z

    move-result v3

    .line 739
    .restart local v3       #keyOk:Z
    if-nez v3, :cond_7

    .line 740
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v7, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 741
    const-string v4, "EncryptionService"

    const-string v5, "Unexpected failure. Failed to init pbkdf key"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    .end local v3           #keyOk:Z
    .restart local v0       #encValue:[B
    .restart local v1       #key:[B
    :cond_6
    iget-object v5, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v5, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 727
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-boolean v8, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    .line 728
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-object v1, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    .line 729
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v8, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    goto :goto_1

    .line 744
    .end local v0           #encValue:[B
    .end local v1           #key:[B
    .restart local v3       #keyOk:Z
    :cond_7
    iput-boolean v6, p0, Lcom/motorola/server/encryption/EncryptionService;->mDownGrade:Z

    .line 745
    invoke-direct {p0}, Lcom/motorola/server/encryption/EncryptionService;->setSystemProperty()V

    .line 746
    const-string v4, "EncryptionService"

    const-string v5, "Pbkdf key successfully converted to device key."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 750
    .end local v3           #keyOk:Z
    :cond_8
    sget v4, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    new-array v0, v4, [B

    .line 751
    .restart local v0       #encValue:[B
    sget v4, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    sget v5, Lcom/motorola/server/encryption/EncryptionService;->sEncryptedKeyLen:I

    invoke-static {v2, v4, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    const/4 v1, 0x0

    .line 753
    .restart local v1       #key:[B
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    invoke-direct {p0, v0, v4}, Lcom/motorola/server/encryption/EncryptionService;->decryptSymKey([B[B)[B

    move-result-object v1

    .line 754
    if-nez v1, :cond_9

    .line 755
    const-string v4, "EncryptionService"

    const-string v5, "Failure decrypting private key. result is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v7, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    goto/16 :goto_0

    .line 758
    :cond_9
    iget-object v5, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v5, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 759
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-boolean v8, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    .line 760
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-object v1, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    .line 761
    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v8, v4, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 762
    const-string v4, "EncryptionService"

    const-string v5, "loaded decrypted pbkdf key"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isScreenSecuredLocked()Z
    .locals 4

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, result:Z
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 499
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    const/4 v1, 0x1

    .line 513
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :cond_0
    return v1
.end method

.method private loadKeysFromTPAPI()[B
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    return-object v0
.end method

.method private saveKeysToTPAPI()I
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method private setSystemProperty()V
    .locals 4

    .prologue
    .line 874
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemPropertiesAll()Ljava/util/Map;

    move-result-object v1

    .line 876
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "app_encr_key_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->setEncryptionDeviceSystemProperty(Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .end local v1           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EncryptionService"

    const-string v3, "Error detected in setting system property ENCRYPTION_KEY_TYPE_DEVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public endSession(Ljava/lang/String;)V
    .locals 0
    .parameter "appid"

    .prologue
    .line 489
    return-void
.end method

.method public getAppKey(Ljava/lang/String;)[B
    .locals 5
    .parameter "appid"

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 541
    .local v1, keyValue:[B
    iget v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    .line 542
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mAppKeys:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/encryption/EncryptionService$Key;

    .line 543
    .local v0, key:Lcom/motorola/server/encryption/EncryptionService$Key;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 544
    iget-object v1, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    .line 549
    .end local v0           #key:Lcom/motorola/server/encryption/EncryptionService$Key;
    :cond_0
    :goto_0
    return-object v1

    .line 546
    .restart local v0       #key:Lcom/motorola/server/encryption/EncryptionService$Key;
    :cond_1
    const-string v2, "EncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key not found for app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultPasswordHash()[B
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 360
    const-string v0, "EncryptionService"

    const-string v1, "encryption feature not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    goto :goto_0
.end method

.method public getKeyStatus(Ljava/lang/String;)I
    .locals 4
    .parameter "appid"

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 525
    .local v1, retStatus:I
    iget v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    .line 526
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mAppKeys:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/encryption/EncryptionService$Key;

    .line 527
    .local v0, key:Lcom/motorola/server/encryption/EncryptionService$Key;
    if-eqz v0, :cond_0

    .line 528
    iget v1, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 531
    .end local v0           #key:Lcom/motorola/server/encryption/EncryptionService$Key;
    :cond_0
    return v1
.end method

.method public getSavedPasswordHash()[B
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 348
    const-string v0, "EncryptionService"

    const-string v1, "encryption feature not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x0

    .line 354
    :goto_0
    return-object v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/encryption/NativeEncryptOpenSSL;->getHashOpenSSL([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    return v0
.end method

.method public handleNewPasswordSaved(Ljava/lang/String;)V
    .locals 6
    .parameter "password"

    .prologue
    const/4 v5, 0x1

    .line 199
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    .line 202
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    const-string v3, "EncryptionService"

    const-string v4, "error: unexpected empty password saved. ignoring new password"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/encryption/NativeEncryptOpenSSL;->getHashOpenSSL([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    .line 210
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    if-ne v3, v5, :cond_3

    .line 212
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    if-nez v3, :cond_1

    .line 214
    const/16 v3, 0x100

    invoke-direct {p0, v3}, Lcom/motorola/server/encryption/EncryptionService;->generateKey(I)[B

    move-result-object v1

    .line 215
    .local v1, key:[B
    if-eqz v1, :cond_1

    .line 216
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-object v1, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    .line 217
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v5, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 220
    .end local v1           #key:[B
    :cond_1
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    if-ne v3, v5, :cond_2

    .line 221
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-object v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    iget-object v4, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    invoke-direct {p0, v3, v4}, Lcom/motorola/server/encryption/EncryptionService;->encryptSymKey([B[B)[B

    move-result-object v0

    .line 222
    .local v0, enckey:[B
    if-eqz v0, :cond_2

    .line 223
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-object v0, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 224
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-boolean v5, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    .line 225
    invoke-direct {p0}, Lcom/motorola/server/encryption/EncryptionService;->saveKeysToTPAPI()I

    .line 232
    .end local v0           #enckey:[B
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    invoke-static {v3}, Lcom/motorola/android/internal/encryption/EncryptionUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, pwdStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/server/encryption/EncryptionManagementTool;->changePassword(Ljava/lang/String;)Z

    goto :goto_0

    .line 229
    .end local v2           #pwdStr:Ljava/lang/String;
    :cond_3
    const-string v3, "EncryptionService"

    const-string v4, "pbkdf data protection disabled or in device mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handlePasswordFailed()V
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mDataProtectionEnabled:Z

    if-nez v0, :cond_0

    .line 249
    const-string v0, "EncryptionService"

    const-string v1, "encryption feature not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public handlePasswordVerified(Ljava/lang/String;)V
    .locals 5
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 265
    const-string v2, "EncryptionService"

    const-string v3, "onPasswordVerified"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, pwdChanged:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/encryption/NativeEncryptOpenSSL;->getHashOpenSSL([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v2, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    if-nez v2, :cond_3

    .line 278
    const-string v2, "EncryptionService"

    const-string v3, "pbkdf key not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    const-string v2, "EncryptionService"

    const-string v3, "ignoring onPasswordVerified. Input is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget v2, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    if-ne v2, v4, :cond_4

    .line 286
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v2, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    if-nez v2, :cond_5

    .line 288
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    invoke-direct {p0, v2, v3}, Lcom/motorola/server/encryption/EncryptionService;->initKey(Lcom/motorola/server/encryption/EncryptionService$Key;I)Z

    .line 302
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    sget-object v3, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Locked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    if-ne v2, v3, :cond_1

    .line 303
    sget-object v2, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Unlocked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    iput-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    .line 305
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.android.encryption.DEVICE_FIRST_UNLOCKED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 289
    :cond_5
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-object v2, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v2, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget v2, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    if-nez v2, :cond_4

    .line 291
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-object v2, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    invoke-direct {p0, v2, v3}, Lcom/motorola/server/encryption/EncryptionService;->decryptSymKey([B[B)[B

    move-result-object v0

    .line 292
    .local v0, key:[B
    if-eqz v0, :cond_6

    .line 293
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-object v0, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    .line 294
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput v4, v2, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    .line 295
    const-string v2, "EncryptionService"

    const-string v3, "pbkdf key ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    :cond_6
    const-string v2, "EncryptionService"

    const-string v3, "Failed to load sym key"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleRecoveryPasswordSaved(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 343
    return-void
.end method

.method public handleRecoveryPasswordVerified(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    .line 322
    iget-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mDataProtectionEnabled:Z

    if-nez v0, :cond_0

    .line 323
    const-string v0, "EncryptionService"

    const-string v1, "encryption feature not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mInRecoveryMode:Z

    goto :goto_0
.end method

.method public handleScreenLocked(I)V
    .locals 3
    .parameter "locked"

    .prologue
    .line 376
    iget-boolean v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mDataProtectionEnabled:Z

    if-nez v1, :cond_1

    .line 377
    const-string v1, "EncryptionService"

    const-string v2, "user data protection not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 386
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    const-string v1, "ENCRYPT_SERVICE"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 389
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :cond_2
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_3

    .line 391
    const-string v1, "EncryptionService"

    const-string v2, "unable to get keguard lock"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    sget-object v2, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Unlocked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    if-ne v1, v2, :cond_4

    .line 397
    sget-object v1, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Locked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    iput-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    goto :goto_0

    .line 404
    :cond_4
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    sget-object v2, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Locked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    if-ne v1, v2, :cond_0

    .line 405
    sget-object v1, Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;->Unlocked:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    iput-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mLockMode:Lcom/motorola/server/encryption/EncryptionService$SCREEN_MODE;

    goto :goto_0
.end method

.method public onAppDataEncryptionChanged(Ljava/lang/String;I)Z
    .locals 4
    .parameter "appid"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 452
    const/4 v1, 0x1

    .line 454
    .local v1, result:Z
    const-string v2, "email"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    .line 460
    .local v0, key:Lcom/motorola/server/encryption/EncryptionService$Key;
    :goto_0
    if-ne p2, v3, :cond_3

    .line 461
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/encryption/NativeEncryptOpenSSL;->getHashOpenSSL([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    .line 464
    :cond_0
    iget v2, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mStatus:I

    if-eq v2, v3, :cond_1

    .line 466
    iget v2, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    invoke-direct {p0, v0, v2}, Lcom/motorola/server/encryption/EncryptionService;->initKey(Lcom/motorola/server/encryption/EncryptionService$Key;I)Z

    move-result v1

    .line 467
    iput-boolean v1, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    .line 472
    :cond_1
    :goto_1
    return v1

    .line 457
    .end local v0           #key:Lcom/motorola/server/encryption/EncryptionService$Key;
    :cond_2
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPublic:Lcom/motorola/server/encryption/EncryptionService$Key;

    .restart local v0       #key:Lcom/motorola/server/encryption/EncryptionService$Key;
    goto :goto_0

    .line 470
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsEnabled:Z

    goto :goto_1
.end method

.method public onKeyTypeChanged(I)Z
    .locals 5
    .parameter "keyMode"

    .prologue
    .line 413
    const/4 v2, 0x0

    .line 415
    .local v2, result:Z
    iget v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    if-eq p1, v3, :cond_6

    .line 416
    iput p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    .line 417
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-boolean v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mIsLoaded:Z

    if-nez v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput p1, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    .line 420
    const/4 v3, 0x1

    .line 447
    :goto_0
    return v3

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 423
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/encryption/NativeEncryptOpenSSL;->getHashOpenSSL([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    .line 425
    :cond_1
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mDefaultPasswordHash:[B

    .line 428
    .local v1, passbuf:[B
    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-object v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    if-nez v3, :cond_4

    .line 429
    :cond_2
    const-string v3, "EncryptionService"

    const-string v4, "onKeyTypeChanged failed. hash is null and/or key value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v3, 0x0

    goto :goto_0

    .line 425
    .end local v1           #passbuf:[B
    :cond_3
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mCurrentPasswordHash:[B

    goto :goto_1

    .line 433
    .restart local v1       #passbuf:[B
    :cond_4
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iget-object v3, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mValue:[B

    invoke-direct {p0, v3, v1}, Lcom/motorola/server/encryption/EncryptionService;->encryptSymKey([B[B)[B

    move-result-object v0

    .line 434
    .local v0, encValue:[B
    if-eqz v0, :cond_5

    .line 435
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput-object v0, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mEncValue:[B

    .line 436
    invoke-direct {p0}, Lcom/motorola/server/encryption/EncryptionService;->saveKeysToTPAPI()I

    move-result v3

    if-nez v3, :cond_5

    .line 437
    const-string v3, "EncryptionService"

    const-string v4, "onKeyTypeChanged success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput p1, p0, Lcom/motorola/server/encryption/EncryptionService;->mKeyMode:I

    .line 439
    iget-object v3, p0, Lcom/motorola/server/encryption/EncryptionService;->mSymKeyPbkdf2:Lcom/motorola/server/encryption/EncryptionService$Key;

    iput p1, v3, Lcom/motorola/server/encryption/EncryptionService$Key;->mMode:I

    .line 440
    const/4 v2, 0x1

    .end local v0           #encValue:[B
    .end local v1           #passbuf:[B
    :cond_5
    :goto_2
    move v3, v2

    .line 447
    goto :goto_0

    .line 444
    :cond_6
    const-string v3, "EncryptionService"

    const-string v4, "keytype not changed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onNewPasswordSaved(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 186
    iget v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 187
    const-string v1, "EncryptionService"

    const-string v2, "encryption feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPasswordFailed()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 238
    iget v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    if-ne v1, v2, :cond_0

    .line 239
    const-string v1, "EncryptionService"

    const-string v2, "encryption feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPasswordVerified(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 256
    iget v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 257
    const-string v1, "EncryptionService"

    const-string v2, "encryption feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onRecoveryPasswordSaved(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 331
    iget v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 332
    const-string v1, "EncryptionService"

    const-string v2, "encryption feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onRecoveryPasswordVerified(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 310
    iget v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 311
    const-string v1, "EncryptionService"

    const-string v2, "encryption feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 315
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onScreenLocked(Z)V
    .locals 2
    .parameter "locked"

    .prologue
    .line 366
    iget v0, p0, Lcom/motorola/server/encryption/EncryptionService;->mStatus:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 367
    const-string v0, "EncryptionService"

    const-string v1, "encryption feature not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    return-void
.end method

.method public startSession(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 537
    return-void
.end method
