.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;
.super Ljava/lang/Thread;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    :cond_0
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    const-string v1, "AtCkpdCmdHandler"

    const-string v2, "attempt to get phone service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->telephony:Lcom/android/internal/telephony/ITelephony;

    .line 249
    iget-object v1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v1, v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->telephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "AtCkpdCmdHandler"

    const-string v2, "got phone service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "AtCkpdCmdHandler"

    const-string v2, "sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
