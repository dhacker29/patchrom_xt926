.class public abstract Lcom/motorola/motepm/BooleanPolicy;
.super Lcom/motorola/motepm/Policy;
.source "BooleanPolicy.java"


# static fields
.field private static final XML_VALUE_ATTRIBUTE_NAME:Ljava/lang/String; = "value"


# instance fields
.field protected final mDisabledResId:I

.field protected final mEnabledResId:I

.field private final mId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIII)V
    .locals 0
    .parameter "id"
    .parameter "infoId"
    .parameter "tag"
    .parameter "titleResId"
    .parameter "descriptionResId"
    .parameter "enabledResId"
    .parameter "disabledResId"

    .prologue
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/motorola/motepm/Policy;-><init>(ILjava/lang/String;II)V

    iput p1, p0, Lcom/motorola/motepm/BooleanPolicy;->mId:I

    iput p6, p0, Lcom/motorola/motepm/BooleanPolicy;->mEnabledResId:I

    iput p7, p0, Lcom/motorola/motepm/BooleanPolicy;->mDisabledResId:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/motepm/BooleanPolicy;->mId:I

    return v0
.end method

.method public isAllowed()Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    .local v0, METHOD_TAG:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, isAllowed:Z
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getActiveAdministrators()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    const-string v4, "MotorolaPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isAllowed(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "()"

    const-string v4, "(who)"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, METHOD_TAG:Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed()Z

    move-result v1

    .local v1, isAllowed:Z
    :goto_0
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

    return v1

    .end local v1           #isAllowed:Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/BooleanPolicy;->getActiveAdminUnchecked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v1

    goto :goto_0
.end method

.method public isAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 4
    .parameter "admin"

    .prologue
    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyPolicyEnfocementAdminCallback(Landroid/content/ComponentName;IZ)V
    .locals 2
    .parameter "who"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->checkMainService()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    .local v0, service:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    goto :goto_0
.end method

.method public onActiveAdminRemoved(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)V
    .locals 4
    .parameter "admin"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    .local v0, METHOD_TAG:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MotorolaPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Re-enabling the policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/motorola/motepm/BooleanPolicy;->onEnable(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    :cond_0
    return-void
.end method

.method protected onDisable(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 1
    .parameter "admin"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onEnable(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 1
    .parameter "admin"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onPolicyEnforcement(Landroid/content/ComponentName;IZ)V
    .locals 1
    .parameter "who"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/motorola/motepm/BooleanPolicy;->setAllowed(Landroid/content/ComponentName;Z)I

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->saveSettings()V

    :cond_0
    return-void
.end method

.method public readFromXml(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "admin"
    .parameter "parser"

    .prologue
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

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

.method public final setAllowed(Landroid/content/ComponentName;Z)I
    .locals 13
    .parameter "who"
    .parameter "allowed"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    .local v0, METHOD_TAG:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, result:I
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/BooleanPolicy;->getActiveAdminForCaller(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[START]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "admin="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " allowed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .local v5, ident:J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v10

    if-eq v10, p2, :cond_8

    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Previous and current policy are not the same, processing it"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed()Z

    move-result v3

    .local v3, before:Z
    invoke-virtual {p0, v1, p2}, Lcom/motorola/motepm/BooleanPolicy;->setAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed()Z

    move-result v2

    .local v2, after:Z
    if-eq v3, v2, :cond_7

    const-string v11, "MotorolaPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz p2, :cond_3

    const-string v10, "Enabling"

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " the policy."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getPackages()[Ljava/lang/String;

    move-result-object v8

    .local v8, packages:[Ljava/lang/String;
    if-eqz p2, :cond_4

    if-eqz v8, :cond_0

    invoke-virtual {p0, v8}, Lcom/motorola/motepm/BooleanPolicy;->enablePackages([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/BooleanPolicy;->onEnable(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v9, -0x1

    :cond_1
    :goto_1
    move v4, p2

    .local v4, currentValue:Z
    if-eqz v9, :cond_2

    if-nez p2, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/motorola/motepm/BooleanPolicy;->setAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V

    :cond_2
    invoke-virtual {p0, p1, v9, v4}, Lcom/motorola/motepm/BooleanPolicy;->notifyPolicyEnfocementAdminCallback(Landroid/content/ComponentName;IZ)V

    .end local v4           #currentValue:Z
    .end local v8           #packages:[Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->saveSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2           #after:Z
    .end local v3           #before:Z
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v9, :cond_a

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    const-string v7, "General failure"

    .local v7, msg:Ljava/lang/String;
    :goto_5
    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #msg:Ljava/lang/String;
    :goto_6
    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[END]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .restart local v2       #after:Z
    .restart local v3       #before:Z
    :cond_3
    :try_start_1
    const-string v10, "Disabling"

    goto :goto_0

    .restart local v8       #packages:[Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {p0, v8}, Lcom/motorola/motepm/BooleanPolicy;->disablePackages([Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/BooleanPolicy;->onDisable(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v9, -0x1

    goto :goto_1

    .restart local v4       #currentValue:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .end local v4           #currentValue:Z
    .end local v8           #packages:[Ljava/lang/String;
    :cond_7
    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "policy status did not change after updating current administrator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .end local v2           #after:Z
    .end local v3           #before:Z
    :catchall_0
    move-exception v10

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_8
    :try_start_2
    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "nothing to do, previous and newer policy settings are the same"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed()Z

    move-result v10

    if-eq v10, p2, :cond_b

    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Current set conflicts with another administrator setting"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x3

    goto/16 :goto_6

    :cond_b
    const-string v10, "MotorolaPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Sucess"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method protected setAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V
    .locals 3
    .parameter "admin"
    .parameter "allowed"

    .prologue
    iget-object v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mPolicyValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    invoke-virtual {p0, p1}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/BooleanPolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    .local v0, tag:Ljava/lang/String;
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v0           #tag:Ljava/lang/String;
    :cond_0
    return-void
.end method
