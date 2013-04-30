.class public Lcom/motorola/server/batterytemp/BatteryTempPolicy;
.super Ljava/lang/Object;
.source "BatteryTempPolicy.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryTempPolicy"

.field private static mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;


# instance fields
.field private mBattTempThresholds:[I

.field private mBatteryPlugged:Z

.field private mBatteryTemp:I

.field private mBatteryTempThreshold:I

.field private mContext:Landroid/content/Context;

.field private mDisplayPendingThreshold:I

.field private mDisplayPendingThresholdDecrease:Z

.field private mDisplayPendingThresholdIncrease:Z

.field private mDisplayProtectionCapValues:[I

.field private mDisplayProtectionSupported:Z

.field private mDisplayTemp:I

.field private mDisplayTempDebounceDelay:J

.field private mDisplayTempHystereses:[I

.field private mDisplayTempThreshold:I

.field private mDisplayTempThresholds:[I

.field private mHandler:Landroid/os/Handler;

.field private mPluggedInStatus:I

.field private mService:Lcom/motorola/server/batterytemp/BatteryTempService;

.field private mTempMarginBelowThresholdNow:Z

.field private mTempMarginBelowThresholdReported:Z

.field private mTempMarginFirstReportCompleted:Z

.field private final mTempMarginReportingPath:Ljava/lang/String;

.field private mTempMarginSupported:Z

.field private final mTempMarginThreshold:I

.field private final mTempMarginThresholdDelay:J

.field private mTmLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionSupported:Z

    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginFirstReportCompleted:Z

    iput-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginSupported:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTmLock:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy$1;-><init>(Lcom/motorola/server/batterytemp/BatteryTempPolicy;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-direct {v1, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    const/4 v2, -0x1

    aput v2, v1, v5

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionSupported:Z

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, delaySeconds:I
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempDebounceDelay:J

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThresholds:[I

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempHystereses:[I

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionCapValues:[I

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040542

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginReportingPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginThreshold:I

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginThresholdDelay:J

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginReportingPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginReportingPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginSupported:Z

    :cond_0
    const-string v1, "BatteryTempPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTempMarginSupported:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTempMarginThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTempMarginThresholdDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginThresholdDelay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTempMarginReportingPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginReportingPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempNormal(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertCharging(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryTempAlertNoCharging(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/server/batterytemp/BatteryTempPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleBatteryCooldownMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/server/batterytemp/BatteryTempPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleDispThermalProtectionMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/server/batterytemp/BatteryTempPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->handleDispTempMargin()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/server/batterytemp/BatteryTempPolicy;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    invoke-direct {v0, p0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    :cond_0
    sget-object v0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempPolicy:Lcom/motorola/server/batterytemp/BatteryTempPolicy;

    return-object v0
.end method

.method private handleBatteryCooldownMode(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryCooldownMode(I)V

    return-void
.end method

.method private handleBatteryTempAlertCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempAlertCharging(I)V

    return-void
.end method

.method private handleBatteryTempAlertNoCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempAlertNoCharging(I)V

    return-void
.end method

.method private handleBatteryTempNormal(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v0, p1}, Lcom/motorola/server/batterytemp/BatteryTempService;->onBatteryTempNormal(I)V

    return-void
.end method

.method private handleDispTempMargin()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, belowThreshold:Z
    const/4 v1, 0x0

    .local v1, callService:Z
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTmLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginFirstReportCompleted:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginFirstReportCompleted:Z

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdNow:Z

    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdReported:Z

    const/4 v1, 0x1

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginReportingPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/motorola/server/batterytemp/BatteryTempService;->onDispTempMargin(ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdReported:Z

    iget-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdNow:Z

    if-eq v2, v4, :cond_0

    iget-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdNow:Z

    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdReported:Z

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleDispThermalProtectionMode()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    monitor-enter v4

    :try_start_0
    iget v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTemp:I

    .local v1, displayTemp:I
    iget v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I

    iput v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionCapValues:[I

    iget v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    aget v0, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, capPercentage:I
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mService:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->onDispThermalProtectionMode(II)V

    return-void

    .end local v0           #capPercentage:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BatteryTempPolicy"

    const-string v5, "Exception reading the cap value"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .restart local v0       #capPercentage:I
    goto :goto_0

    .end local v0           #capPercentage:I
    .end local v1           #displayTemp:I
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private notifyBatteryTemp(IIZ)V
    .locals 4
    .parameter "batteryThreshold"
    .parameter "batteryTemp"
    .parameter "charging"

    .prologue
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :pswitch_2
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1

    .end local v0           #msg:Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pickNextBatteryTempThreshold(I)V
    .locals 3
    .parameter "temperature"

    .prologue
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    array-length v0, v2

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    aget v2, v2, v1

    if-le p1, v2, :cond_2

    iput v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    :cond_0
    iget v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    if-lt v2, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final updateBatteryTemp(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "plugged"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .local v2, plugged:Z
    :goto_0
    iget v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    .local v1, oldThreshold:I
    const-string v6, "temperature"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, batteryTemp:I
    const-string v6, "status"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mPluggedInStatus:I

    iput-boolean v2, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryPlugged:Z

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->pickNextBatteryTempThreshold(I)V

    const-string v4, "BatteryTempPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBatteryTemp temperature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Threshhold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBattTempThresholds:[I

    aget v5, v6, v5

    add-int/lit8 v5, v5, 0x32

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, pmc:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .end local v3           #pmc:Landroid/os/PowerManager;
    :cond_0
    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    if-eq v4, v1, :cond_1

    iget v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTempThreshold:I

    iget v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mBatteryTemp:I

    invoke-direct {p0, v4, v5, v2}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->notifyBatteryTemp(IIZ)V

    :cond_1
    return-void

    .end local v0           #batteryTemp:I
    .end local v1           #oldThreshold:I
    .end local v2           #plugged:Z
    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method private final updateDisplayTemp(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayProtectionSupported:Z

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v8, "temperature"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, displayTemp:I
    iput v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTemp:I

    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThresholds:[I

    array-length v8, v8

    if-ge v3, v8, :cond_1

    iget-object v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThresholds:[I

    aget v8, v8, v3

    if-ge v1, v8, :cond_6

    :cond_1
    move v5, v3

    .local v5, threshold:I
    iget-object v9, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    monitor-enter v9

    :try_start_0
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-le v5, v8, :cond_2

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    if-nez v8, :cond_4

    :cond_2
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-ge v5, v8, :cond_3

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    if-nez v8, :cond_4

    :cond_3
    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-eq v5, v8, :cond_4

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    if-nez v8, :cond_a

    :cond_4
    iget-object v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-ge v5, v8, :cond_7

    move v8, v6

    :goto_2
    iput-boolean v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z

    iget v8, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    if-le v5, v8, :cond_8

    :goto_3
    iput-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    iget-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdIncrease:Z

    if-eqz v6, :cond_9

    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I

    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempDebounceDelay:J

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v4           #msg:Landroid/os/Message;
    :cond_5
    :goto_4
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .end local v5           #threshold:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v5       #threshold:I
    :cond_7
    move v8, v7

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3

    :cond_9
    :try_start_1
    iget-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThresholdDecrease:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    :try_start_2
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempHystereses:[I

    iget v7, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayTempThreshold:I

    aget v0, v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .local v0, displayHysteresisTemp:I
    :goto_5
    if-gt v1, v0, :cond_5

    :try_start_3
    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I

    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .restart local v4       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .end local v0           #displayHysteresisTemp:I
    .end local v4           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "BatteryTempPolicy"

    const-string v7, "Exception reading the hysteresis value"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .restart local v0       #displayHysteresisTemp:I
    const/4 v1, -0x1

    goto :goto_5

    .end local v0           #displayHysteresisTemp:I
    .end local v2           #e:Ljava/lang/Exception;
    :cond_a
    iput v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mDisplayPendingThreshold:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method private final updateDisplayTempMargin(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginSupported:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "temperature"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, batteryTemp:I
    iget v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginThreshold:I

    if-ge v0, v3, :cond_2

    const/4 v1, 0x1

    .local v1, belowThreshold:Z
    :goto_1
    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTmLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginFirstReportCompleted:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_2
    iput-boolean v1, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdNow:Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .end local v1           #belowThreshold:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1       #belowThreshold:Z
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdNow:Z

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginBelowThresholdReported:Z

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mHandler:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->mTempMarginThresholdDelay:J

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public onReceiveIntent(Landroid/content/Intent;Z)V
    .locals 4
    .parameter "intent"
    .parameter "activityManagerReady"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, pluggedInStatus:I
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->updateBatteryTemp(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->updateDisplayTemp(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/server/batterytemp/BatteryTempPolicy;->updateDisplayTempMargin(Landroid/content/Intent;)V

    .end local v1           #pluggedInStatus:I
    :cond_1
    return-void
.end method
