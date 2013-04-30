.class Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;
.super Ljava/lang/Thread;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# static fields
.field public static MSG_TIMEOUT:I

.field private static TIMEOUT:I


# instance fields
.field private mExit:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x100

    sput v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->MSG_TIMEOUT:I

    .line 194
    const/16 v0, 0x2710

    sput v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mExit:Z

    .line 201
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mHandler:Landroid/os/Handler;

    .line 202
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mExit:Z

    .line 241
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->interrupt()V

    .line 242
    monitor-exit p0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 205
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mExit:Z

    if-nez v2, :cond_0

    .line 206
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    sget v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->TIMEOUT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 221
    .local v1, m:Landroid/os/Message;
    sget v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->MSG_TIMEOUT:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 222
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 209
    .end local v1           #m:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 210
    .local v0, iex:Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 212
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 216
    :catch_1
    move-exception v0

    .line 217
    .restart local v0       #iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 224
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public sleep()V
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->interrupt()V

    .line 235
    monitor-exit p0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watch()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 229
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
