.class public Lcom/motorola/android/internal/telephony/ImsSettingsJni;
.super Ljava/lang/Object;
.source "ImsSettingsJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    :try_start_0
    const-string v1, "imssettings"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 27
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ImsSetttingsJni"

    const-string v2, "WARNING: Could not load libimssettings.so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static native commitImsSettings()I
.end method

.method public static native connectToImsService()I
.end method

.method public static native getImsInt(I)I
.end method

.method public static native getImsString(I)Ljava/lang/String;
.end method

.method public static native setImsInt(II)I
.end method

.method public static native setImsString(ILjava/lang/String;)I
.end method

.method public static native startImsSession()I
.end method
