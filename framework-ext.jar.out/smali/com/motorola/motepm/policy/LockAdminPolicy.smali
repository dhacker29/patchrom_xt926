.class public Lcom/motorola/motepm/policy/LockAdminPolicy;
.super Lcom/motorola/motepm/Policy;
.source "LockAdminPolicy.java"


# static fields
.field private static final LOCK_NOTIFICATION_RES_ID:I = 0x10405a9

.field private static final XML_VALUE_ATTRIBUTE_NAME:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    const/16 v0, 0x7b

    const-string v1, "lock-admin"

    const v2, 0x10405ab

    const v3, 0x10405ac

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/motepm/Policy;-><init>(ILjava/lang/String;II)V

    .line 31
    return-void
.end method

.method private setLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V
    .locals 3
    .parameter "admin"
    .parameter "allowed"

    .prologue
    .line 60
    iget-object v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public isLocked(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "()"

    const-string v4, "(who)"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, METHOD_TAG:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ComponentName param cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getActiveAdminUnchecked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/motepm/policy/LockAdminPolicy;->isLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v1

    .line 53
    .local v1, isLocked:Z
    const-string v2, "MotorolaPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v1
.end method

.method public isLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 4
    .parameter "admin"

    .prologue
    const/4 v1, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    iget-object v2, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifyOperationDenied()V
    .locals 2

    .prologue
    .line 112
    const v0, 0x1040582

    const v1, 0x10405a9

    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->sendPolicyChangedNotification(II)V

    .line 115
    return-void
.end method

.method public readFromXml(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "admin"
    .parameter "parser"

    .prologue
    .line 119
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, value:I
    iget-object v3, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    if-lez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setLocked(Landroid/content/ComponentName;Z)I
    .locals 9
    .parameter "who"
    .parameter "locked"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, METHOD_TAG:Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, result:I
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getActiveAdminForCaller(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 70
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v6, "MotorolaPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[START]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v6, "MotorolaPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "admin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " locked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 78
    .local v2, ident:J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->isLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v6

    if-eq v6, p2, :cond_0

    .line 80
    const-string v6, "MotorolaPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Previous and current policy are not the same, processing it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0, v1, p2}, Lcom/motorola/motepm/policy/LockAdminPolicy;->setLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V

    .line 87
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.app.action.ACTION_LOCK_ADMIN_RESULT_RETURN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "locked"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->saveSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    const-string v6, "MotorolaPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[END]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v5

    .line 96
    :cond_0
    :try_start_1
    const-string v6, "MotorolaPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nothing to do, previous and newer policy settings are the same"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public writeToXml(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "admin"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->isLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, tag:Ljava/lang/String;
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    .end local v0           #tag:Ljava/lang/String;
    :cond_0
    return-void
.end method
