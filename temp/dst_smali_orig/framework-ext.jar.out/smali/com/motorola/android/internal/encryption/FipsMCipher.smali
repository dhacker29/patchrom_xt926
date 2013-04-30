.class public Lcom/motorola/android/internal/encryption/FipsMCipher;
.super Ljavax/crypto/CipherSpi;
.source "FipsMCipher.java"


# static fields
.field static final AES_BLOCK_SIZE:I = 0x10

.field public static final AES_CBC_CIPHER:Ljava/lang/String; = "AES/CBC"

.field public static final AES_CIPHER:Ljava/lang/String; = "AES"

.field public static final AES_IV_SIZE:I = 0x10

.field public static final AES_KEY_BYTE_LEN:I = 0x20

.field private static final DEBUG:Z = false

.field static final DECRYPT_CACHE_SIZE:I = 0x1010

.field static final ENCRYPT_CACHE_SIZE:I = 0x1000

.field static final ENC_TYPE_MULTI_BLOCK:I = 0xb

.field static final HASH_SHA256_SIZE:I = 0x20

.field static final HEADER_TITLE_SIZE:I = 0x8

.field static final PADDING_FOOTER_SIZE:I = 0x10

.field public static final PKCS7_PADDING:Ljava/lang/String; = "PKCS7Padding"

.field static final PKCS7_PADDING_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "FipsMCipher"


# instance fields
.field private mAESCtx:J

.field private mAlgoParams:Ljava/security/AlgorithmParameters;

.field private mAlgorithm:Ljava/lang/String;

.field private mAppId:I

.field private mCacheSize:I

.field private mHeader:[B

.field private mHeaderDone:Z

.field private mInputCache:[B

.field private mInputCacheCount:I

.field private mInvalidHeader:Z

.field private mIv:[B

.field private mIvParam:Ljavax/crypto/spec/IvParameterSpec;

.field private mKeyLen:I

.field private mNativeOpMode:I

.field private mOpCount:I

.field private mOpMode:I

.field private mPadding:Ljava/lang/String;

.field private mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private sHeaderBlockSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    iput-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeader:[B

    iput v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    iput v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpCount:I

    const-string v0, "AES/CBC"

    iput-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAlgorithm:Ljava/lang/String;

    const/16 v0, 0x20

    iput v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mKeyLen:I

    const-string v0, "PKCS7Padding"

    iput-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mPadding:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    iput v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->sHeaderBlockSize:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAppId:I

    const/16 v0, 0x1010

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    iget-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->getHeaderSize()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->sHeaderBlockSize:I

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipher;->reinit()V

    return-void
.end method

.method private getCacheSize()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1000

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1010

    goto :goto_0
.end method

.method private parseHeader([B)Z
    .locals 7
    .parameter "inputData"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, hash:[B
    array-length v4, p1

    iget v5, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->sHeaderBlockSize:I

    if-ge v4, v5, :cond_0

    const-string v4, "FipsMCipher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Header data is too short for parsing, len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    :goto_0
    return v3

    :cond_0
    iget v4, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const-string v4, "FipsMCipher"

    const-string v5, "Header data can only be parsed in decrypt mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->sHeaderBlockSize:I

    invoke-static {v4, p1, v5}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->decryptHeader([B[BI)[B

    move-result-object v0

    .local v0, decryptedHeader:[B
    if-eqz v0, :cond_2

    array-length v4, v0

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "FipsMCipher"

    const-string v5, "Header data decryption failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    goto :goto_0

    :cond_3
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    const/16 v6, 0x10

    invoke-static {v0, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v4, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    if-nez v4, :cond_4

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private reinit()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iput v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    iput-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    iget-wide v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    invoke-static {v0, v1}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->deInitAESMulti(J)I

    iput-wide v4, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    :cond_0
    iput v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpCount:I

    iput-boolean v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    iput-boolean v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    iput-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    return-void
.end method

.method private setHeader()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    array-length v3, v3

    if-nez v3, :cond_3

    :cond_0
    const-string v3, "FipsMCipher"

    const-string v4, "getHeader failed due to empty iv"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, header:[B
    iget-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAppId:I

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->initHeader([BII[B)[B

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeader:[B

    iput-boolean v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    :cond_4
    iget-boolean v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 4
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, outdataLen:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/android/internal/encryption/FipsMCipher;->engineDoFinal([BII)[B

    move-result-object v1

    .local v1, outdata:[B
    if-eqz v1, :cond_1

    array-length v2, v1

    array-length v3, p4

    sub-int/2addr v3, p5

    if-le v2, v3, :cond_0

    const/4 v1, 0x0

    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-direct {v0}, Ljavax/crypto/ShortBufferException;-><init>()V

    .local v0, ex:Ljavax/crypto/ShortBufferException;
    throw v0

    .end local v0           #ex:Ljavax/crypto/ShortBufferException;
    :cond_0
    const/4 v3, 0x0

    invoke-static {v1, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v1, 0x0

    return v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 11
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    iget-wide v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    .local v8, output:[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .local v9, tmpOutput:[B
    if-eqz p1, :cond_1

    if-lez p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/android/internal/encryption/FipsMCipher;->engineUpdate([BII)[B

    move-result-object v9

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    throw v0

    :cond_2
    if-eqz v9, :cond_3

    :try_start_0
    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_3
    iget v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    iget v2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mNativeOpMode:I

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    iget v4, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    iget-object v5, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    invoke-static/range {v0 .. v5}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->doAESUpdate(JI[BI[B)[B

    move-result-object v9

    if-eqz v9, :cond_7

    iget-boolean v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    if-ne v0, v10, :cond_4

    iget-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeader:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    :cond_4
    const/4 v0, 0x0

    array-length v1, v9

    invoke-virtual {v6, v9, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_6
    :goto_1
    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipher;->reinit()V

    goto :goto_0

    :cond_7
    :try_start_1
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-direct {v0}, Ljavax/crypto/BadPaddingException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    :try_start_2
    const-string v0, "FipsMCipher"

    const-string v1, "Unexpected io exception writing to byte buffer"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipher;->reinit()V

    throw v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipher;->getCacheSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 3
    .parameter "inputLen"

    .prologue
    move v0, p1

    .local v0, outputLen:I
    iget v1, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    const/16 v0, 0x20

    :cond_0
    :goto_0
    return v0

    :cond_1
    rem-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_0

    rem-int/lit8 v1, p1, 0x10

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p1

    add-int/lit8 v0, v1, 0x10

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, -0x10

    goto :goto_0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAlgoParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const-string v0, "FipsMCipher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FipsMCipher engineInit3 opmode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "this cipher engine doesn\'t support AlgorithmParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/motorola/android/internal/encryption/FipsMCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipher;->reinit()V

    if-eqz p2, :cond_0

    instance-of v3, p2, Ljavax/crypto/spec/SecretKeySpec;

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    .local v0, ex:Ljava/security/InvalidKeyException;
    throw v0

    .end local v0           #ex:Ljava/security/InvalidKeyException;
    :cond_1
    check-cast p2, Ljavax/crypto/spec/SecretKeySpec;

    .end local p2
    iput-object p2, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    if-ne p1, v4, :cond_3

    if-eqz p3, :cond_2

    instance-of v3, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v3, :cond_2

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .end local p3
    iput-object p3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIvParam:Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIvParam:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    :goto_0
    iput p1, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    iget v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    const/4 v3, 0x0

    :goto_1
    iput v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mNativeOpMode:I

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v3

    iget v5, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mNativeOpMode:I

    invoke-static {v3, v5}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->initAESMulti([BI)J

    move-result-wide v1

    .local v1, result:J
    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-gtz v3, :cond_5

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v3, "failed to initialize native crypto ctx"

    invoke-direct {v0, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .restart local v0       #ex:Ljava/security/InvalidKeyException;
    throw v0

    .end local v0           #ex:Ljava/security/InvalidKeyException;
    .end local v1           #result:J
    .restart local p3
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>()V

    .local v0, ex:Ljava/security/InvalidAlgorithmParameterException;
    throw v0

    .end local v0           #ex:Ljava/security/InvalidAlgorithmParameterException;
    :cond_3
    const/16 v3, 0x10

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    goto :goto_0

    .end local p3
    :cond_4
    move v3, v4

    goto :goto_1

    .restart local v1       #result:J
    :cond_5
    iput-wide v1, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    if-ne p1, v4, :cond_6

    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipher;->setHeader()Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "failed to initialize header for encryption mode"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-direct {p0}, Lcom/motorola/android/internal/encryption/FipsMCipher;->getCacheSize()I

    move-result v3

    iput v3, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mCacheSize:I

    return-void
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-string v0, "AES/CBC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    const-string v0, "PKCS7Padding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    invoke-direct {v0}, Ljavax/crypto/NoSuchPaddingException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 4
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, outdataLen:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/android/internal/encryption/FipsMCipher;->engineUpdate([BII)[B

    move-result-object v1

    .local v1, outdata:[B
    if-eqz v1, :cond_1

    array-length v2, v1

    array-length v3, p4

    sub-int/2addr v3, p5

    if-le v2, v3, :cond_0

    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-direct {v0}, Ljavax/crypto/ShortBufferException;-><init>()V

    .local v0, ex:Ljavax/crypto/ShortBufferException;
    throw v0

    .end local v0           #ex:Ljavax/crypto/ShortBufferException;
    :cond_0
    const/4 v3, 0x0

    invoke-static {v1, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v1, 0x0

    return v2
.end method

.method protected engineUpdate([BII)[B
    .locals 19
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    const/16 v17, 0x0

    :cond_0
    :goto_0
    return-object v17

    :cond_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInvalidHeader:Z

    if-eqz v3, :cond_4

    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->sHeaderBlockSize:I

    if-ge v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    const/16 v17, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->sHeaderBlockSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    sub-int v14, v3, v4

    .local v14, headerRem:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/android/internal/encryption/FipsMCipher;->parseHeader([B)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v17, 0x0

    goto :goto_0

    :cond_6
    sub-int p3, p3, v14

    add-int p2, p2, v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    .end local v14           #headerRem:I
    :cond_7
    const/16 v17, 0x0

    .local v17, output:[B
    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mCacheSize:I

    if-ge v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    .local v10, copiedCount:I
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v9, bos:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mCacheSize:I

    div-int v13, v3, v4

    .local v13, flushCount:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v13, :cond_b

    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mCacheSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    sub-int v18, v3, v4

    .local v18, toCopy:I
    add-int v3, p2, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v3, v3, v18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAESCtx:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mNativeOpMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mIv:[B

    invoke-static/range {v3 .. v8}, Lcom/motorola/android/internal/encryption/NativeEncrypt;->doAESUpdate(JI[BI[B)[B

    move-result-object v11

    .local v11, data:[B
    const/16 v16, 0x0

    .local v16, offset:I
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mOpMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeader:[B

    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mHeaderDone:Z

    :cond_9
    array-length v3, v11

    sub-int v3, v3, v16

    move/from16 v0, v16

    invoke-virtual {v9, v11, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_a
    const/4 v11, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v10, v10, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v11           #data:[B
    .end local v16           #offset:I
    .end local v18           #toCopy:I
    :cond_b
    add-int v3, p2, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCache:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    sub-int v6, p3, v10

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    add-int v3, v3, p3

    sub-int/2addr v3, v10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mInputCacheCount:I

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto/16 :goto_0

    :catch_0
    move-exception v12

    .local v12, e:Ljava/io/IOException;
    const-string v3, "FipsMCipher"

    const-string v4, "unexpected IO exception when writing/closing bytestream"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public setCreatorId(I)V
    .locals 0
    .parameter "appid"

    .prologue
    iput p1, p0, Lcom/motorola/android/internal/encryption/FipsMCipher;->mAppId:I

    return-void
.end method
