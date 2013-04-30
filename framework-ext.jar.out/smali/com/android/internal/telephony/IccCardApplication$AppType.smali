.class public final enum Lcom/android/internal/telephony/IccCardApplication$AppType;
.super Ljava/lang/Enum;
.source "IccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardApplication$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public static final enum APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public static final enum APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public static final enum APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public static final enum APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public static final enum APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public static final enum APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    const-string v1, "APPTYPE_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/IccCardApplication$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    const-string v1, "APPTYPE_SIM"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/IccCardApplication$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    const-string v1, "APPTYPE_USIM"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/IccCardApplication$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    const-string v1, "APPTYPE_RUIM"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/IccCardApplication$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    const-string v1, "APPTYPE_CSIM"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/IccCardApplication$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    const-string v1, "APPTYPE_ISIM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCardApplication$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->$VALUES:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/android/internal/telephony/IccCardApplication$AppType;->mValue:I

    .line 43
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 5
    .parameter "value"

    .prologue
    .line 50
    invoke-static {}, Lcom/android/internal/telephony/IccCardApplication$AppType;->values()[Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 51
    .local v1, e:Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget v4, v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 55
    .end local v1           #e:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_1
    return-object v1

    .line 50
    .restart local v1       #e:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v1           #e:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->$VALUES:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardApplication$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/telephony/IccCardApplication$AppType;->mValue:I

    return v0
.end method
