.class public abstract Lcom/motorola/camera/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ActivityBase$MainHandler;
    }
.end annotation


# static fields
.field private static final INACTIVITY_TIMEOUT:I


# instance fields
.field protected mHandler:Lcom/motorola/camera/ActivityBase$MainHandler;

.field private mInactivityDelay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ActivityBase;->mInactivityDelay:I

    .line 37
    new-instance v0, Lcom/motorola/camera/ActivityBase$MainHandler;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ActivityBase$MainHandler;-><init>(Lcom/motorola/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/motorola/camera/ActivityBase;->mHandler:Lcom/motorola/camera/ActivityBase$MainHandler;

    .line 34
    return-void
.end method


# virtual methods
.method protected inactivityTimeoutExpired()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ActivityBase;->moveTaskToBack(Z)Z

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ActivityBase;->mInactivityDelay:I

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/motorola/camera/ActivityBase;->mHandler:Lcom/motorola/camera/ActivityBase$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ActivityBase$MainHandler;->removeMessages(I)V

    .line 49
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 54
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->restartInactivityTimer()V

    .line 55
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 60
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->restartInactivityTimer()V

    .line 61
    return-void
.end method

.method protected final restartInactivityTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/ActivityBase;->mHandler:Lcom/motorola/camera/ActivityBase$MainHandler;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ActivityBase$MainHandler;->removeMessages(I)V

    .line 68
    iget v0, p0, Lcom/motorola/camera/ActivityBase;->mInactivityDelay:I

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/motorola/camera/ActivityBase;->mHandler:Lcom/motorola/camera/ActivityBase$MainHandler;

    iget v1, p0, Lcom/motorola/camera/ActivityBase;->mInactivityDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/motorola/camera/ActivityBase$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    :cond_0
    return-void
.end method
