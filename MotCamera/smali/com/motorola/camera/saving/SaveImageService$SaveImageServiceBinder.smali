.class public Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;
.super Landroid/os/Binder;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SaveImageServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/saving/SaveImageService;


# direct methods
.method protected constructor <init>(Lcom/motorola/camera/saving/SaveImageService;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/motorola/camera/saving/SaveImageService;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$SaveImageServiceBinder;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    return-object v0
.end method
