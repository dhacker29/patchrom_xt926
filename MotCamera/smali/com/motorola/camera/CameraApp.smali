.class public Lcom/motorola/camera/CameraApp;
.super Landroid/app/Application;
.source "CameraApp.java"


# static fields
.field private static sInstance:Lcom/motorola/camera/CameraApp;


# instance fields
.field private mCameraKpi:Lcom/motorola/camera/CameraKpi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/CameraApp;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    return-object v0
.end method

.method private static setInstance(Lcom/motorola/camera/CameraApp;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 56
    sput-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 57
    return-void
.end method


# virtual methods
.method public getCameraKpi()Lcom/motorola/camera/CameraKpi;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0}, Lcom/motorola/camera/CameraKpi;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 38
    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->setInstance(Lcom/motorola/camera/CameraApp;)V

    .line 39
    return-void
.end method
