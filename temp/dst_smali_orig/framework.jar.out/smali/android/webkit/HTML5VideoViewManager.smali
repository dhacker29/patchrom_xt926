.class Landroid/webkit/HTML5VideoViewManager;
.super Ljava/lang/Object;
.source "HTML5VideoViewManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mProxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/HTML5VideoViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiThread:Ljava/lang/Thread;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "webView"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/HTML5VideoViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public enterFullscreenVideo(ILjava/lang/String;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"

    .prologue
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getVideoLayerId()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->webkitEnterFullscreen()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    goto :goto_0

    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_2
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 4

    .prologue
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->webKitExitFullscreen()V

    goto :goto_0

    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_1
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 4

    .prologue
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    goto :goto_0

    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_1
    return-void
.end method

.method public registerProxy(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 3
    .parameter "proxy"

    .prologue
    sget-boolean v1, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .local v0, result:Z
    return v0
.end method

.method public setBaseLayer(I)V
    .locals 4
    .parameter "layer"

    .prologue
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1, p1}, Landroid/webkit/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0

    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 4

    .prologue
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->suspend()V

    goto :goto_0

    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_1
    return-void
.end method

.method public unregisterProxy(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 3
    .parameter "proxy"

    .prologue
    sget-boolean v1, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, result:Z
    return v0
.end method
