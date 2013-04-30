.class public Lcom/motorola/android/internal/encryption/EncryptionException;
.super Ljava/lang/Exception;
.source "EncryptionException.java"


# static fields
.field public static final CODE_NULL_INPUT:I = 0x66

.field public static final CODE_NULL_RESULT:I = 0x65

.field public static final CODE_SYSTEM_ERROR:I = 0x64


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "msg"
    .parameter "code"

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/motorola/android/internal/encryption/EncryptionException;->mCode:I

    iput p2, p0, Lcom/motorola/android/internal/encryption/EncryptionException;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1
    .parameter "msg"
    .parameter "cause"
    .parameter "code"

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/motorola/android/internal/encryption/EncryptionException;->mCode:I

    iput p3, p0, Lcom/motorola/android/internal/encryption/EncryptionException;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/internal/encryption/EncryptionException;->mCode:I

    return v0
.end method
