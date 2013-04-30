.class public Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveAdmin"
.end annotation


# instance fields
.field browserEnabled:Z

.field cameraEnabled:Z

.field consumerEmailEnabled:Z

.field final info:Lcom/motorola/motepm/MotDeviceAdminInfo;

.field mAppBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppWhiteListEnabled:Z

.field mIntentDisabled:Z

.field public final mPolicyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field manualDatasyncinRoaming:Z

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field minimumPasswordComplexity:I

.field minimumPasswordLength:I

.field passwordExpirationPeriod:I

.field passwordHistoryLength:I

.field passwordQuality:I

.field passwordRecoveryEnabled:Z

.field pop3imap4EmailEnabled:Z

.field sdCardEnabled:Z

.field simplePasswordEnabled:Z

.field splitTunnelingEnabled:Z

.field storageCardEncryptionRequired:Z

.field textMessageEnabled:Z

.field vpnEnabled:Z


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V
    .locals 4
    .parameter "_info"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .parameter "prefix"
    .parameter "pw"

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "uid="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "policies:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, pols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    iget-object v6, v6, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "passwordQuality=0x"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " minimumPasswordLength="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "minimumPasswordComplexity="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "maximumTimeToUnlock="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "maximumFailedPasswordsForWipe="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "passwordHistoryLength="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "passwordRecoveryEnabled="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "passwordExpirationPeriod="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "storageCardEncryptionRequired="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "cameraAllowed ="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "sdCardAllowed ="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "browserAllowed ="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "textMessageAllowed ="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "simplePasswordEnabled ="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "pop3imap4EmailEnabled ="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "consumerEmailEnabled ="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "splitTunnelingEnabled = "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "vpnEnabled = "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAppWhiteListEnabled = "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    const/4 v0, 0x0

    .local v0, counter:I
    :goto_1
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package-name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3       #packageName:Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package-name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v3           #packageName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, tag:Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "\""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "\" = "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .end local v5           #tag:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method getUid()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    if-eq v3, v5, :cond_25

    if-ne v3, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_25

    :cond_1
    if-eq v3, v10, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, tag:Ljava/lang/String;
    const-string v4, "policies"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/motorola/motepm/Policy;->POLICIES_BY_TAG:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/Policy;

    .local v1, policy:Lcom/motorola/motepm/Policy;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0, p1}, Lcom/motorola/motepm/Policy;->readFromXml(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_3
    const-string v4, "password-quality"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    goto :goto_1

    :cond_4
    const-string v4, "min-password-length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    goto :goto_1

    :cond_5
    const-string v4, "min-password-complexity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    goto :goto_1

    :cond_6
    const-string v4, "max-time-to-unlock"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_1

    :cond_7
    const-string v4, "max-failed-password-wipe"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_1

    :cond_8
    const-string v4, "password-history-length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    goto/16 :goto_1

    :cond_9
    const-string v4, "password-recovery-enabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    goto/16 :goto_1

    :cond_a
    move v4, v6

    goto :goto_2

    :cond_b
    const-string v4, "password-expiration-period"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    goto/16 :goto_1

    :cond_c
    const-string v4, "storage-card-encryption-required"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    goto/16 :goto_1

    :cond_d
    move v4, v6

    goto :goto_3

    :cond_e
    const-string v4, "manual-data-sync"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    goto/16 :goto_1

    :cond_f
    move v4, v6

    goto :goto_4

    :cond_10
    const-string v4, "camera-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    goto/16 :goto_1

    :cond_11
    move v4, v6

    goto :goto_5

    :cond_12
    const-string v4, "sd-card-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_13

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    goto/16 :goto_1

    :cond_13
    move v4, v6

    goto :goto_6

    :cond_14
    const-string v4, "browser-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_15

    move v4, v5

    :goto_7
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    goto/16 :goto_1

    :cond_15
    move v4, v6

    goto :goto_7

    :cond_16
    const-string v4, "text-message-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_17

    move v4, v5

    :goto_8
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    goto/16 :goto_1

    :cond_17
    move v4, v6

    goto :goto_8

    :cond_18
    const-string v4, "simple-password-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_19

    move v4, v5

    :goto_9
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    goto/16 :goto_1

    :cond_19
    move v4, v6

    goto :goto_9

    :cond_1a
    const-string v4, "pop3-imap4-email-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v5

    :goto_a
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    goto/16 :goto_1

    :cond_1b
    move v4, v6

    goto :goto_a

    :cond_1c
    const-string v4, "consumer-email-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1d

    move v4, v5

    :goto_b
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    goto/16 :goto_1

    :cond_1d
    move v4, v6

    goto :goto_b

    :cond_1e
    const-string v4, "vpn-split-tunneling-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v5

    :goto_c
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    goto/16 :goto_1

    :cond_1f
    move v4, v6

    goto :goto_c

    :cond_20
    const-string v4, "vpn-allowed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_21

    move v4, v5

    :goto_d
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    goto/16 :goto_1

    :cond_21
    move v4, v6

    goto :goto_d

    :cond_22
    const-string v4, "white-list"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "value"

    invoke-interface {p1, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_23

    move v4, v5

    :goto_e
    iput-boolean v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    goto/16 :goto_1

    :cond_23
    move v4, v6

    goto :goto_e

    :cond_24
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown admin tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1           #policy:Lcom/motorola/motepm/Policy;
    .end local v2           #tag:Ljava/lang/String;
    :cond_25
    return-void
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v2, "policies"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v2, "policies"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eqz v2, :cond_0

    const-string v2, "password-quality"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "password-quality"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-lez v2, :cond_0

    const-string v2, "min-password-length"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "min-password-length"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-wide v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-string v2, "max-time-to-unlock"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget-wide v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "max-time-to-unlock"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v2, :cond_2

    const-string v2, "max-failed-password-wipe"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "max-failed-password-wipe"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eqz v2, :cond_3

    const-string v2, "password-history-length"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "password-history-length"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-ne v2, v8, :cond_4

    const-string v2, "password-recovery-enabled"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "password-recovery-enabled"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_5

    const-string v2, "password-expiration-period"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "password-expiration-period"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-ne v2, v8, :cond_6

    const-string v2, "storage-card-encryption-required"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "storage-card-encryption-required"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-ne v2, v8, :cond_7

    const-string v2, "manual-data-sync"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "manual-data-sync"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    if-nez v2, :cond_8

    const-string v2, "camera-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "camera-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v2, :cond_9

    const-string v2, "sd-card-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "sd-card-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    if-nez v2, :cond_a

    const-string v2, "browser-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "browser-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    if-nez v2, :cond_b

    const-string v2, "text-message-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "text-message-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-nez v2, :cond_c

    const-string v2, "simple-password-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "simple-password-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-lez v2, :cond_d

    const-string v2, "min-password-complexity"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    iget v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "min-password-complexity"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v2, :cond_e

    const-string v2, "pop3-imap4-email-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "pop3-imap4-email-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    if-nez v2, :cond_f

    const-string v2, "consumer-email-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "consumer-email-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    if-nez v2, :cond_10

    const-string v2, "vpn-split-tunneling-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "vpn-split-tunneling-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    if-nez v2, :cond_11

    const-string v2, "vpn-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "vpn-allowed"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    sget-object v2, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/Policy;

    .local v1, policy:Lcom/motorola/motepm/Policy;
    invoke-virtual {v1, p0, p1}, Lcom/motorola/motepm/Policy;->writeToXml(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .end local v1           #policy:Lcom/motorola/motepm/Policy;
    :cond_12
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-ne v2, v8, :cond_13

    const-string v2, "white-list"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "white-list"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    return-void
.end method
