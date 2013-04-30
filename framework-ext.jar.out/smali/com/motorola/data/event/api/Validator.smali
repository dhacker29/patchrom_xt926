.class public interface abstract Lcom/motorola/data/event/api/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# virtual methods
.method public abstract validate(Lcom/motorola/data/event/api/IEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/data/event/api/SchemaNotFoundException;,
            Lcom/motorola/data/event/api/ValidationException;
        }
    .end annotation
.end method
