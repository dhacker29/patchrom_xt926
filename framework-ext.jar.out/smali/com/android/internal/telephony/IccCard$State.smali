.class public final enum Lcom/android/internal/telephony/IccCard$State;
.super Ljava/lang/Enum;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCard$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCard$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum ERROR:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum MISSING:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NETWORK_PENALTY_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PUK_PERM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PERSO_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PERM_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "CARD_IO_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PUK_PERM_LOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NETWORK_PENALTY_LOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_PENALTY_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "MISSING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    .line 71
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_PENALTY_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/android/internal/telephony/IccCard$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCard$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method


# virtual methods
.method public getIntentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/android/internal/telephony/IccCard$1;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 124
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 125
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 126
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 127
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 128
    :pswitch_7
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 131
    :pswitch_8
    const-string v0, "ERROR"

    goto :goto_0

    .line 132
    :pswitch_9
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/android/internal/telephony/IccCard$1;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 146
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 147
    :pswitch_3
    const-string v0, "PERSO"

    goto :goto_0

    .line 148
    :pswitch_4
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 149
    :pswitch_5
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 152
    :pswitch_6
    const-string v0, "ERROR"

    goto :goto_0

    .line 153
    :pswitch_7
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public iccCardExist()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_PENALTY_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPenaltyNetworkLocked()Z
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_PENALTY_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinLocked()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequireNetworkLock()Z
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
