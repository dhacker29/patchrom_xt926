.class public Lcom/motorola/android/internal/telephony/ApnInfo;
.super Ljava/lang/Object;
.source "ApnInfo.java"


# static fields
.field public static final PROFILE_TYPE_3GPP:I = 0x0

.field public static final PROFILE_TYPE_3GPP2:I = 0x1


# instance fields
.field public apn:Ljava/lang/String;

.field public apn_class:I

.field public auth_type:I

.field public enabled:Z

.field public inactivity_timeout:I

.field public index:I

.field public ip_type:I

.field public password:Ljava/lang/String;

.field public rat_type:I

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->type:I

    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->inactivity_timeout:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "t"
    .parameter "i"
    .parameter "c"
    .parameter "a"
    .parameter "ipt"
    .parameter "en"
    .parameter "inact"
    .parameter "au"
    .parameter "u"
    .parameter "p"
    .parameter "r"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->type:I

    iput p2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    iput p3, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    iput-object p4, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    iput p5, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    iput-boolean p6, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    iput p7, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->inactivity_timeout:I

    iput p8, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    iput-object p9, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    iput-object p10, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    iput p11, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[ApnInfo] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->inactivity_timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
