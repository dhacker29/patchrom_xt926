.class public Lcom/motorola/android/internal/encryption/EncryptedOutputStream;
.super Ljavax/crypto/CipherOutputStream;
.source "EncryptedOutputStream.java"


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"

    .prologue
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 0
    .parameter "os"
    .parameter "c"

    .prologue
    invoke-direct {p0, p1, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-void
.end method
