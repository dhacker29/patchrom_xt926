.class public Lcom/motorola/camera/CheckboxPreference;
.super Lcom/motorola/camera/IconListPreference;
.source "CheckboxPreference.java"


# static fields
.field public static final VALUE_FALSE:Ljava/lang/String; = "false"

.field public static final VALUE_NONE:Ljava/lang/String; = "none"

.field public static final VALUE_TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/CheckboxPreference;->mResolver:Landroid/content/ContentResolver;

    .line 24
    return-void
.end method
