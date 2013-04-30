.class public Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityLaunchRequestInfo"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private returnRequired:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "i"
    .parameter "classname"
    .parameter "returnRequired"

    .prologue
    .line 872
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput-object p1, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    .line 874
    iput-object p2, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    .line 875
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->returnRequired:Z

    .line 876
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public isReturnRequired()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->returnRequired:Z

    return v0
.end method
