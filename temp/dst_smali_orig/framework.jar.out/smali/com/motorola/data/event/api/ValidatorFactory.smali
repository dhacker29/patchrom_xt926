.class public Lcom/motorola/data/event/api/ValidatorFactory;
.super Ljava/lang/Object;
.source "ValidatorFactory.java"


# static fields
.field private static factory:Lcom/motorola/data/event/api/ValidatorFactory;


# instance fields
.field private validator:Lcom/motorola/data/event/api/Validator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/data/event/api/ValidatorFactory;
    .locals 2

    .prologue
    const-class v1, Lcom/motorola/data/event/api/ValidatorFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/data/event/api/ValidatorFactory;->factory:Lcom/motorola/data/event/api/ValidatorFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/data/event/api/ValidatorFactory;

    invoke-direct {v0}, Lcom/motorola/data/event/api/ValidatorFactory;-><init>()V

    sput-object v0, Lcom/motorola/data/event/api/ValidatorFactory;->factory:Lcom/motorola/data/event/api/ValidatorFactory;

    :cond_0
    sget-object v0, Lcom/motorola/data/event/api/ValidatorFactory;->factory:Lcom/motorola/data/event/api/ValidatorFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getValidator()Lcom/motorola/data/event/api/Validator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/data/event/api/ValidatorConfigurationException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/motorola/data/event/api/ValidatorFactory;->validator:Lcom/motorola/data/event/api/Validator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/data/event/api/ValidatorFactory;->validator:Lcom/motorola/data/event/api/Validator;

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-class v2, Lcom/motorola/data/event/api/Validator;

    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .local v1, loader:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<Lcom/motorola/data/event/api/Validator;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/data/event/api/Validator;

    iput-object v2, p0, Lcom/motorola/data/event/api/ValidatorFactory;->validator:Lcom/motorola/data/event/api/Validator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v2, p0, Lcom/motorola/data/event/api/ValidatorFactory;->validator:Lcom/motorola/data/event/api/Validator;

    if-nez v2, :cond_2

    new-instance v2, Lcom/motorola/data/event/api/ValidatorConfigurationException;

    const-string v3, "no Validator found"

    invoke-direct {v2, v3}, Lcom/motorola/data/event/api/ValidatorConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #loader:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<Lcom/motorola/data/event/api/Validator;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/motorola/data/event/api/ValidatorConfigurationException;

    invoke-direct {v2, v0}, Lcom/motorola/data/event/api/ValidatorConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #loader:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<Lcom/motorola/data/event/api/Validator;>;"
    :cond_2
    iget-object v2, p0, Lcom/motorola/data/event/api/ValidatorFactory;->validator:Lcom/motorola/data/event/api/Validator;

    goto :goto_0
.end method
