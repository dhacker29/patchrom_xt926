.class public Lcom/motorola/server/batterytemp/BatteryTempService;
.super Ljava/lang/Object;
.source "BatteryTempService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryTempService"


# instance fields
.field private disableBluetooth:Z

.field private disableGPS:Z

.field private disableWifi:Z

.field private mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field tempAlert:Landroid/app/AlertDialog;

.field tempOK:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    .line 42
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    .line 43
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    .line 46
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 47
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 50
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 53
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/batterytemp/BatteryTempService;)Lcom/motorola/server/BeepSoundService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/server/batterytemp/BatteryTempService;Lcom/motorola/server/BeepSoundService;)Lcom/motorola/server/BeepSoundService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    return-object p1
.end method

.method private getGpsState()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 372
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private gotoHome()V
    .locals 4

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 337
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method private setBluetooth(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 376
    const-string v4, "bluetooth"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 380
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_0

    .line 382
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    if-eqz v4, :cond_1

    .line 383
    const-string v3, "BatteryTempService"

    const-string v4, "Enable Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    .line 385
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    if-nez p1, :cond_0

    .line 387
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 388
    .local v1, bluetoothOff:Z
    :goto_1
    if-nez v1, :cond_0

    .line 389
    const-string v3, "BatteryTempService"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z

    .line 391
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    .end local v1           #bluetoothOff:Z
    :catch_0
    move-exception v2

    .line 395
    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "BatteryTempService"

    const-string v4, "RemoteException during bluetooth shutdown"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_2
    move v1, v3

    .line 387
    goto :goto_1
.end method

.method private setGPSEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 350
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->getGpsState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    .line 354
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showBatteryCountdownDialog()V
    .locals 5

    .prologue
    .line 280
    new-instance v0, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;-><init>(Landroid/content/Context;Lcom/motorola/server/batterytemp/BatteryTempService;)V

    .line 281
    .local v0, countDownDialog:Lcom/motorola/server/batterytemp/BattTempCountDownDialog;
    invoke-virtual {v0}, Lcom/motorola/server/batterytemp/BattTempCountDownDialog;->show()V

    .line 283
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 285
    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 287
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    .line 289
    :cond_1
    return-void
.end method

.method private showBatteryTempAlertDialog(Z)V
    .locals 5
    .parameter "charging"

    .prologue
    .line 253
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080604

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 255
    const v1, 0x10405b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 256
    if-eqz p1, :cond_2

    .line 257
    const v1, 0x10405b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 260
    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/motorola/server/batterytemp/BatteryTempService$1;

    invoke-direct {v2, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$1;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 268
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 269
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 271
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 273
    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 275
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    .line 277
    :cond_1
    return-void

    .line 259
    :cond_2
    const v1, 0x10405ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showCooldownMode()V
    .locals 4

    .prologue
    .line 359
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.batteryreport.TEMPERATURE_COOLDOWN_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 366
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 367
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private showTempOKDialog(Z)V
    .locals 5
    .parameter "chargingCont"

    .prologue
    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080605

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 294
    const v1, 0x10405bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 295
    if-eqz p1, :cond_2

    .line 296
    const v1, 0x10405bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 299
    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/motorola/server/batterytemp/BatteryTempService$2;

    invoke-direct {v2, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$2;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    new-instance v1, Lcom/motorola/server/batterytemp/BatteryTempService$3;

    invoke-direct {v1, p0}, Lcom/motorola/server/batterytemp/BatteryTempService$3;-><init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 321
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 322
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 324
    if-nez p1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->isThreadNotRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 328
    new-instance v1, Lcom/motorola/server/BeepSoundService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/server/BeepSoundService;-><init>(IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    .line 329
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mBatteryTempPlayBeep:Lcom/motorola/server/BeepSoundService;

    invoke-virtual {v1}, Lcom/motorola/server/BeepSoundService;->start()V

    .line 333
    :cond_1
    return-void

    .line 298
    :cond_2
    const v1, 0x10405bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public getBatteryTempState()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    return v0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBatteryCooldownMode(I)V
    .locals 2
    .parameter "batteryTemp"

    .prologue
    const/4 v1, 0x0

    .line 129
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 148
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryCountdownDialog()V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBatteryTempAlertCharging(I)V
    .locals 3
    .parameter "batteryTemp"

    .prologue
    .line 90
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 107
    :pswitch_1
    return-void

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_TEMP_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryTempAlertDialog(Z)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBatteryTempAlertNoCharging(I)V
    .locals 1
    .parameter "batteryTemp"

    .prologue
    .line 110
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 126
    :pswitch_1
    return-void

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempOK:Landroid/app/AlertDialog;

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryTempAlertDialog(Z)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBatteryTempNormal(I)V
    .locals 5
    .parameter "batteryTemp"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    iget v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    iput v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mCurrentState:I

    .line 87
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 65
    :cond_0
    invoke-direct {p0, v3}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 71
    iput-object v1, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 73
    :cond_1
    invoke-direct {p0, v3}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_TEMP_NORMAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0, v4}, Lcom/motorola/server/batterytemp/BatteryTempService;->setCooldownModeEnabled(Z)V

    .line 79
    invoke-direct {p0, v4}, Lcom/motorola/server/batterytemp/BatteryTempService;->showTempOKDialog(Z)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDispTempMargin(ZLjava/lang/String;)V
    .locals 7
    .parameter "belowThreshold"
    .parameter "reportingPath"

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 169
    const/4 v2, 0x0

    .line 171
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x2

    :try_start_1
    new-array v0, v4, [B

    .line 173
    .local v0, bytes:[B
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const/16 v4, 0x30

    :goto_0
    int-to-byte v4, v4

    aput-byte v4, v0, v5

    .line 174
    const/4 v4, 0x1

    const/16 v5, 0xa

    aput-byte v5, v0, v4

    .line 175
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 179
    if-eqz v3, :cond_0

    .line 181
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    .end local v0           #bytes:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 173
    .restart local v0       #bytes:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_1
    const/16 v4, 0x31

    goto :goto_0

    .line 176
    .end local v0           #bytes:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "BatteryTempService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException writing to file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    if-eqz v2, :cond_0

    .line 181
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 182
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 179
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 181
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 179
    :cond_2
    :goto_4
    throw v4

    .line 182
    :catch_2
    move-exception v5

    goto :goto_4

    .line 179
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 176
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public onDispThermalProtectionMode(II)V
    .locals 3
    .parameter "batteryTemp"
    .parameter "capPercentage"

    .prologue
    .line 151
    if-lez p2, :cond_0

    const/4 v0, 0x1

    .line 158
    .local v0, enabled:Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.DISPLAY_THERMAL_PROTECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_ENABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string v2, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_CAP"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v2, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_TEMP"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v2, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    return-void

    .line 151
    .end local v0           #enabled:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCooldownModeEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    if-eqz p1, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->gotoHome()V

    .line 201
    invoke-direct {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->showCooldownMode()V

    .line 203
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cooldown_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 213
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    .line 214
    invoke-direct {p0, v5}, Lcom/motorola/server/batterytemp/BatteryTempService;->setBluetooth(Z)V

    .line 216
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 219
    iput-boolean v6, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, allowedProviders:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-direct {p0, v5}, Lcom/motorola/server/batterytemp/BatteryTempService;->setGPSEnabled(Z)V

    .line 247
    .end local v0           #allowedProviders:Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.BATTERY_TEMP_COOLDOWN_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void

    .line 207
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cooldown_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 229
    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    if-nez p1, :cond_1

    .line 230
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableBluetooth:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/server/batterytemp/BatteryTempService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    :cond_5
    invoke-direct {p0, v6}, Lcom/motorola/server/batterytemp/BatteryTempService;->setBluetooth(Z)V

    .line 235
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    if-eqz v3, :cond_6

    .line 236
    iget-object v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 238
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 239
    iput-boolean v5, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableWifi:Z

    .line 242
    :cond_6
    iget-boolean v3, p0, Lcom/motorola/server/batterytemp/BatteryTempService;->disableGPS:Z

    if-eqz v3, :cond_1

    .line 243
    invoke-direct {p0, v6}, Lcom/motorola/server/batterytemp/BatteryTempService;->setGPSEnabled(Z)V

    goto :goto_1
.end method
