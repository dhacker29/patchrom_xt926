.class public final enum Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;
.super Ljava/lang/Enum;
.source "ImsSettingsJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSettingsJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "enumImsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eFeatureTag:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eImsDomain:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eImsTestMode:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePcscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePcscfLocalPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePcscfRemotePort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePhoneContextUri:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePrivateUserId:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePsbcIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePublicPassword:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum ePublicUri:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eRegistrarUserId:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eScscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eSigComp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eSmsFormat:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eSmsOverIp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eSsbcIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eSubscriptionValue:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eTimerF:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eTimerSipReg:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eTimerT1:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eTimerT2:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

.field public static final enum eVoipConfigSession:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eTimerT1"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT1:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 40
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eTimerT2"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT2:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 41
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eTimerF"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerF:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 42
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eSigComp"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSigComp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 43
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePublicUri"

    invoke-direct {v0, v1, v7}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePublicUri:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 44
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePublicPassword"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePublicPassword:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 45
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePrivateUserId"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePrivateUserId:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 46
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eRegistrarUserId"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eRegistrarUserId:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 47
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eImsDomain"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsDomain:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 48
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePcscfIpPort"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 49
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePcscfRemotePort"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfRemotePort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 50
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eSmsFormat"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsFormat:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 51
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePhoneContextUri"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePhoneContextUri:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 52
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eSmsOverIp"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsOverIp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 53
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eImsTestMode"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsTestMode:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 54
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eFeatureTag"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eFeatureTag:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 55
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePcscfLocalPort"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfLocalPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 56
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eTimerSipReg"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerSipReg:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 57
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eSubscriptionValue"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSubscriptionValue:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 58
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eScscfIpPort"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eScscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 59
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "ePsbcIpPort"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePsbcIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 60
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eSsbcIpPort"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSsbcIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 61
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    const-string v1, "eVoipConfigSession"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eVoipConfigSession:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    .line 38
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT1:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT2:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerF:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSigComp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePublicUri:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePublicPassword:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePrivateUserId:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eRegistrarUserId:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsDomain:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfRemotePort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsFormat:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePhoneContextUri:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsOverIp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsTestMode:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eFeatureTag:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfLocalPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerSipReg:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSubscriptionValue:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eScscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePsbcIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSsbcIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eVoipConfigSession:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->$VALUES:[Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->$VALUES:[Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v0}, [Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    return-object v0
.end method
