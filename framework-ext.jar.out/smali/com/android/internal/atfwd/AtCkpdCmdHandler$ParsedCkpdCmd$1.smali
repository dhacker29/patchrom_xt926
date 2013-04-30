.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd$1;
.super Ljava/lang/Thread;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->parse_cmd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd$1;->this$1:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    const-string v1, "AtCkpdCmdHandler"

    const-string v2, "end the call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd$1;->this$1:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;

    iget-object v1, v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v1, v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->telephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AtCkpdCmdHandler"

    const-string v2, "Failed to end the call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
