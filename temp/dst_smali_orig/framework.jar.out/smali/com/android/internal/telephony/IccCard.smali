.class public interface abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$1;,
        Lcom/android/internal/telephony/IccCard$State;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_VALUE_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_ERROR:Ljava/lang/String; = "ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_ICC_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_PERSO:Ljava/lang/String; = "PERSO"


# virtual methods
.method public abstract changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeLogicalChannel(ILandroid/os/Message;)V
.end method

.method public abstract exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getActiveApplicationTypeInIccCard()Lcom/android/internal/telephony/IccCardApplication$AppType;
.end method

.method public abstract getAppOperatorNumeric()Ljava/lang/String;
.end method

.method public abstract getAppOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
.end method

.method public abstract getAppOperatorNumeric(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
.end method

.method public abstract getApplicationTypesInIccCard()[Lcom/android/internal/telephony/IccCardApplication$AppType;
.end method

.method public abstract getIccCardState()Lcom/android/internal/telephony/IccCard$State;
.end method

.method public abstract getIccFdnAvailable()Z
.end method

.method public abstract getIccFdnEnabled()Z
.end method

.method public abstract getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
.end method

.method public abstract getIccLockEnabled()Z
.end method

.method public abstract getIccPin1RetryCount()I
.end method

.method public abstract getIccPin2Blocked()Z
.end method

.method public abstract getIccPin2RetryCount()I
.end method

.method public abstract getIccPuk2Blocked()Z
.end method

.method public abstract getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
.end method

.method public abstract getSSTPinDisableAllow()Z
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/android/internal/telephony/IccCard$State;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
.end method

.method public abstract openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSSTPinDisableAllow(Z)V
.end method

.method public abstract supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract unregisterForAbsent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPersoLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForReady(Landroid/os/Handler;)V
.end method
