.class public Lcom/motorola/data/event/api/SchemaNotFoundException;
.super Ljava/lang/Exception;
.source "SchemaNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = -0x11e4909804f6eb8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
