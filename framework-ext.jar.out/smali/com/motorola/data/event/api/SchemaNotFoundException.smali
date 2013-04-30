.class public Lcom/motorola/data/event/api/SchemaNotFoundException;
.super Ljava/lang/Exception;
.source "SchemaNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = -0x11e4909804f6eb8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
