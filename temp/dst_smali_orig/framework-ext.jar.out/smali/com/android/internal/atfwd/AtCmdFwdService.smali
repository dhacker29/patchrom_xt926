.class public Lcom/android/internal/atfwd/AtCmdFwdService;
.super Lcom/android/internal/atfwd/IAtCmdFwd$Stub;
.source "AtCmdFwdService.java"


# static fields
.field private static final ATFWD_PERMISSION:Ljava/lang/String; = "android.permission.ATCMD"

.field private static final LOG_TAG:Ljava/lang/String; = "AtCmdFwdService"


# instance fields
.field private mCmdHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/atfwd/AtCmdHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;-><init>(Landroid/content/Context;)V

    .local v0, cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_0
    :try_start_1
    new-instance v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCtsaCmdHandler;-><init>(Landroid/content/Context;)V

    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/internal/atfwd/AtCfunCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCfunCmdHandler;-><init>(Landroid/content/Context;)V

    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_2
    :try_start_3
    new-instance v0, Lcom/android/internal/atfwd/AtCrslCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCrslCmdHandler;-><init>(Landroid/content/Context;)V

    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_3
    :try_start_4
    new-instance v0, Lcom/android/internal/atfwd/AtCssCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCssCmdHandler;-><init>(Landroid/content/Context;)V

    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_4
    :try_start_5
    new-instance v0, Lcom/android/internal/atfwd/AtCmarCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCmarCmdHandler;-><init>(Landroid/content/Context;)V

    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_5
    :try_start_6
    new-instance v0, Lcom/android/internal/atfwd/AtCsoCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCsoCmdHandler;-><init>(Landroid/content/Context;)V

    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_6
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_1
    move-exception v1

    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_2
    move-exception v1

    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_3
    move-exception v1

    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_4
    move-exception v1

    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_5
    move-exception v1

    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_6
    move-exception v1

    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method


# virtual methods
.method public processAtCmd(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 7
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ATCMD"

    const-string v5, "Processing AT Command: Permission denied"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "AtCmdFwdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processAtCmd(cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/atfwd/AtCmdHandler;

    .local v1, h:Lcom/android/internal/atfwd/AtCmdHandler;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/atfwd/AtCmdHandler;->handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    return-object v2

    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    const-string v3, "+CME ERROR: 2"

    invoke-direct {v2, v6, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :cond_0
    const-string v3, "AtCmdFwdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    const-string v3, "+CME ERROR: 4"

    invoke-direct {v2, v6, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0
.end method
