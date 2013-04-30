.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 1
    .parameter "database"
    .parameter "usePtp"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/mtp/MtpDatabase;->getPropertyCacheInstance()Landroid/mtp/MtpPropertyCache;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Z)V

    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Z)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/mtp/MtpPropertyCache;->update(II)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/mtp/MtpPropertyCache;->update(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    invoke-virtual {v0}, Landroid/mtp/MtpPropertyCache;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    :cond_0
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 2
    .parameter "handle"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/mtp/MtpPropertyCache;->update(II)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 2
    .parameter "handle"

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mMtpPropertyCache:Landroid/mtp/MtpPropertyCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/mtp/MtpPropertyCache;->update(II)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
