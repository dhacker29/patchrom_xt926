.class Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;
.super Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WhiteListParser"
.end annotation


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "app"

.field private static final OUTER_TAG:Ljava/lang/String; = "app-whitelist"


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 4972
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4972
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method protected addPackage(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .parameter "admin"
    .parameter "packageName"

    .prologue
    .line 4990
    iget-object v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4991
    return-void
.end method

.method protected beforeLoading(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)V
    .locals 1
    .parameter "admin"

    .prologue
    .line 4985
    iget-object v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4986
    return-void
.end method

.method protected getAppTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5005
    const-string v0, "app"

    return-object v0
.end method

.method protected getOuterTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5000
    const-string v0, "app-whitelist"

    return-object v0
.end method

.method protected getPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Ljava/util/List;
    .locals 1
    .parameter "admin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4995
    iget-object v0, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    return-object v0
.end method

.method protected makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 4979
    const-string v0, "/data/system/mot_device_app_whitelist.xml"

    .line 4980
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/mot_device_app_whitelist.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/mot_device_app_whitelist.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method
