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

    .line 75
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    .line 33
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    .line 51
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 53
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 61
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    .line 469
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;-><init>(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)V

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .line 76
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    .line 77
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getLocationCallbackHandler(I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 466
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getLocationCallbackHandler(I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 2
    .parameter "sessionId"

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    if-eqz v0, :cond_1

    .line 444
    iget v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCurrentSessionId:I

    if-ne p1, v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :goto_0
    monitor-exit p0

    return-object v0

    .line 450
    :cond_0
    :try_start_1
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "not matching with active sessoin. drop fix report"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 455
    :cond_1
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "no active sessoin. drop fix report"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized modeAdjustmentStateMachine_Dormant(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .parameter "criteria"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 87
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to Standalone state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 94
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :pswitch_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSA:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 101
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSA state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 112
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
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
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 165
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to Standalone state from MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 171
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 172
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 188
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSA for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 159
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
    .line 197
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 201
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    .line 202
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with MSB mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 212
    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    .line 213
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with MSB mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 197
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
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 132
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 137
    :pswitch_2
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    .line 138
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with Standalone mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 150
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSS for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 121
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
    .line 393
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 395
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGpsResetType()I
    .locals 4

    .prologue
    .line 411
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    .line 413
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, -0x1

    .line 418
    :goto_0
    return v0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-virtual {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->ordinal()I

    move-result v0

    .line 417
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
    .line 336
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 338
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public getPdeAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 315
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    .line 319
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
    .line 375
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .line 378
    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getInstance()Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    .line 380
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v0, v1}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V

    .line 381
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->init()Z

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    .line 384
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 386
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    .line 387
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    .line 389
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "engine init done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public setCredentials(Ljava/lang/String;)V
    .locals 2
    .parameter "credentials"

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 404
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGpsReset(I)Ljava/lang/Boolean;
    .locals 5
    .parameter "resetType"

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    .line 424
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 427
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

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->values()[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    move-result-object v1

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    .line 431
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->mMask:I
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->access$000(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->resetGps(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, aioob:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 434
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public setLocSrvAddress(Ljava/net/InetSocketAddress;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_1

    .line 348
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    .line 353
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 354
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "PDE server nullified"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPdeAddress(Ljava/net/InetSocketAddress;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_1

    .line 325
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    .line 330
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 331
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "PDE server nullified"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->stop()Z

    .line 360
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->cleanup()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 369
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 371
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "engine shutdown completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 359
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

    .line 233
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v2, :cond_0

    .line 235
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :goto_0
    monitor-exit p0

    return v0

    .line 239
    :cond_0
    :try_start_1
    iput p2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCurrentSessionId:I

    .line 240
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 242
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->set_agps_server(ILjava/lang/String;I)V

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->set_agps_server(ILjava/lang/String;I)V

    .line 253
    :cond_2
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$2;->$SwitchMap$com$qualcomm$location$vzw_library$imp$VzwHalGpsLocationProviderImp$FixModeDecisionState:[I

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    invoke-virtual {v3}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode decision state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_Dormant(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    .line 275
    :goto_1
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getHintNextFixArriveInSec()I

    move-result v2

    if-gez v2, :cond_4

    .line 278
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "VzwHalGpsLocProvider"

    const-string v3, "move back to Dormant state for lack of hint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_3
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 282
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

    .line 284
    :cond_5
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 286
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine start failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_Standalone(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    goto :goto_1

    .line 264
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_MSA(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    goto :goto_1

    .line 268
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_MSB(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 289
    goto/16 :goto_0

    .line 253
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

    .line 293
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    .line 295
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :goto_0
    monitor-exit p0

    return v0

    .line 299
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 302
    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 304
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v1}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->stop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine stop failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
