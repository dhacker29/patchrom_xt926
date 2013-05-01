.class public Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;
.super Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;
.source "VzwHalGpsLocationProviderImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$2;,
        Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;,
        Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;
    }
.end annotation


# static fields
.field public static final AGPS_SERVER_ADDR_TYPE_MPC:I = 0x3

.field public static final AGPS_SERVER_ADDR_TYPE_PDE:I = 0x2

.field public static final AGPS_SERVER_ADDR_TYPE_SUPL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VzwHalGpsLocProvider"


# instance fields
.field private DEBUG:Z

.field private VERBOSE:Z

.field private mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

.field private mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

.field private mCredentials:Ljava/lang/String;

.field private mCurrentSessionId:I

.field private mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

.field private mIsInitDone:Z

.field private mLocSrvAddr:Ljava/net/InetSocketAddress;

.field private mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

.field private mPdeAddr:Ljava/net/InetSocketAddress;

.field private mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

.field private mSessionIdValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;-><init>()V

    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;-><init>(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)V

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getLocationCallbackHandler(I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getLocationCallbackHandler(I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 2
    .parameter "sessionId"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCurrentSessionId:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "not matching with active sessoin. drop fix report"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "no active sessoin. drop fix report"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized modeAdjustmentStateMachine_Dormant(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .parameter "criteria"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to Standalone state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSA:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSA state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized modeAdjustmentStateMachine_MSA(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .parameter "criteria"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to Standalone state from MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSA for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized modeAdjustmentStateMachine_MSB(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .parameter "criteria"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with MSB mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with MSB mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized modeAdjustmentStateMachine_Standalone(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .parameter "criteria"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    :pswitch_2
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with Standalone mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSS for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCredentials()Ljava/lang/String;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGpsResetType()I
    .locals 4

    .prologue
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-virtual {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->ordinal()I

    move-result v0

    .local v0, resetType:I
    const-string v1, "VzwHalGpsLocProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGpsResetType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLocSrvAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public getPdeAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public declared-synchronized init(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getInstance()Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v0, v1}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->init()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "engine init done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setCredentials(Ljava/lang/String;)V
    .locals 2
    .parameter "credentials"

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGpsReset(I)Ljava/lang/Boolean;
    .locals 5
    .parameter "resetType"

    .prologue
    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "VzwHalGpsLocProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGpsResetType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->values()[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    move-result-object v1

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->mMask:I
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->access$000(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->resetGps(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, aioob:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public setLocSrvAddress(Ljava/net/InetSocketAddress;)V
    .locals 2
    .parameter "address"

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_1

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "PDE server nullified"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPdeAddress(Ljava/net/InetSocketAddress;)V
    .locals 2
    .parameter "address"

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_1

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "PDE server nullified"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->stop()Z

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "engine shutdown completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z
    .locals 6
    .parameter "criteria"
    .parameter "sessionId"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v2, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput p2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCurrentSessionId:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->set_agps_server(ILjava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->set_agps_server(ILjava/lang/String;I)V

    :cond_2
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$2;->$SwitchMap$com$qualcomm$location$vzw_library$imp$VzwHalGpsLocationProviderImp$FixModeDecisionState:[I

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    invoke-virtual {v3}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode decision state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_Dormant(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    :goto_1
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getHintNextFixArriveInSec()I

    move-result v2

    if-gez v2, :cond_4

    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "VzwHalGpsLocProvider"

    const-string v3, "move back to Dormant state for lack of hint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    :cond_4
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v2, :cond_5

    const-string v2, "VzwHalGpsLocProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine start failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_Standalone(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_MSA(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_MSB(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized stop()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v1}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->stop()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine stop failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
