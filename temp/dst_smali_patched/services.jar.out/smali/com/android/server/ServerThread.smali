.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 135

    .prologue
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v112

    .local v112, shutdownAction:Ljava/lang/String;
    if-eqz v112, :cond_0

    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, v112

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_11

    const/16 v103, 0x1

    .local v103, reboot:Z
    :goto_0
    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_12

    const/4 v3, 0x1

    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v112

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v102

    .local v102, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v103

    move-object/from16 v1, v102

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .end local v102           #reason:Ljava/lang/String;
    .end local v103           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .local v75, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v75

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v74, 0x0

    .local v74, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .local v16, headless:Z
    const/16 v43, 0x0

    .local v43, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v61, 0x0

    .local v61, contentService:Landroid/content/ContentService;
    const/16 v80, 0x0

    .local v80, lights:Lcom/android/server/LightsService;
    const/16 v101, 0x0

    .local v101, power:Lcom/android/server/PowerManagerService;
    const/16 v50, 0x0

    .local v50, battery:Lcom/android/server/BatteryService;
    const/16 v123, 0x0

    .local v123, vibrator:Lcom/android/server/VibratorService;
    const/16 v46, 0x0

    .local v46, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v93, 0x0

    .local v93, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v59, 0x0

    .local v59, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v125, 0x0

    .local v125, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    const/16 v132, 0x0

    .local v132, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v130, 0x0

    .local v130, wifi:Lcom/android/server/WifiService;
    const/16 v111, 0x0

    .local v111, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v100, 0x0

    .local v100, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .local v4, context:Landroid/content/Context;
    const/16 v134, 0x0

    .local v134, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v51, 0x0

    .local v51, bluetooth:Landroid/server/BluetoothService;
    const/16 v53, 0x0

    .local v53, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v67, 0x0

    .local v67, dock:Lcom/android/server/DockObserver;
    const/16 v89, 0x0

    .local v89, motDock:Lcom/motorola/server/MotDockObserver;
    const/16 v121, 0x0

    .local v121, usb:Lcom/android/server/usb/UsbService;
    const/16 v109, 0x0

    .local v109, serial:Lcom/android/server/SerialService;
    const/16 v119, 0x0

    .local v119, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v104, 0x0

    .local v104, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v115, 0x0

    .local v115, throttle:Lcom/android/server/ThrottleService;
    const/16 v95, 0x0

    .local v95, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v56, 0x0

    .local v56, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v79, 0x0

    .local v79, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_56

    .end local v101           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v74 .. v74}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "telephony.msim.registry"

    new-instance v9, Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .local v64, cryptState:Ljava/lang/String;
    const/16 v99, 0x0

    .local v99, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v99, 0x1

    :cond_2
    :goto_3
    if-eqz v74, :cond_15

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v99

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v100

    const/16 v76, 0x0

    .local v76, firstBoot:Z
    :try_start_2
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v76

    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v44, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .local v44, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_57

    move-object/from16 v43, v44

    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move/from16 v0, v74

    if-ne v0, v3, :cond_16

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v61

    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v81, Lcom/android/server/LightsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v80           #lights:Lcom/android/server/LightsService;
    .local v81, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v81

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_58

    .end local v50           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v124, Lcom/android/server/VibratorService;

    move-object/from16 v0, v124

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_59

    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .local v124, vibrator:Lcom/android/server/VibratorService;
    :try_start_9
    const-string v3, "vibrator"

    move-object/from16 v0, v124

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5a

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_17

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v76, :cond_18

    const/4 v3, 0x1

    :goto_9
    move/from16 v0, v99

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v134

    const-string v3, "window"

    move-object/from16 v0, v134

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v134 .. v134}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v79

    const-string v3, "input"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v134

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v64           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v99           #onlyCore:Z
    .restart local v80       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v65, 0x0

    .local v65, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v87, 0x0

    .local v87, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    const/16 v113, 0x0

    .local v113, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v77, 0x0

    .local v77, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v47, 0x0

    .local v47, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v97, 0x0

    .local v97, notification:Lcom/android/server/NotificationManagerService;
    const/16 v128, 0x0

    .local v128, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v82, 0x0

    .local v82, location:Lcom/android/server/LocationManagerService;
    const/16 v106, 0x0

    .local v106, sensorHub:Lcom/motorola/server/SensorHubService;
    const/16 v62, 0x0

    .local v62, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v117, 0x0

    .local v117, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v84, 0x0

    .local v84, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v69, 0x0

    .local v69, dreamy:Landroid/service/dreams/DreamManagerService;
    const/16 v72, 0x0

    .local v72, encryption:Lcom/motorola/server/encryption/EncryptionService;
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_3

    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v78, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v78

    move-object/from16 v1, v134

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .local v78, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_55

    move-object/from16 v77, v78

    .end local v78           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    :goto_d
    :try_start_e
    const-string v3, "SystemServer"

    const-string v9, "Motorola encryption service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v73, Lcom/motorola/server/encryption/EncryptionService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/motorola/server/encryption/EncryptionService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .end local v72           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .local v73, encryption:Lcom/motorola/server/encryption/EncryptionService;
    :try_start_f
    const-string v3, "mot_encryption_admin"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_54

    move-object/from16 v72, v73

    .end local v73           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v72       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :cond_3
    :goto_e
    :try_start_10
    invoke-virtual/range {v134 .. v134}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    :goto_f
    :try_start_11
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    :goto_10
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403fa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_53

    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_1f

    const/16 v91, 0x0

    .local v91, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v92, Lcom/android/server/MountService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .end local v91           #mountService:Lcom/android/server/MountService;
    .local v92, mountService:Lcom/android/server/MountService;
    :try_start_14
    const-string v3, "mount"

    move-object/from16 v0, v92

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_52

    move-object/from16 v91, v92

    .end local v92           #mountService:Lcom/android/server/MountService;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_12
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v85, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v85, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_16
    const-string v3, "lock_settings"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_51

    move-object/from16 v84, v85

    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_13
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v66, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v66, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_18
    const-string v3, "device_policy"

    move-object/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_50

    move-object/from16 v65, v66

    .end local v66           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v114, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v114

    move-object/from16 v1, v134

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v114, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1a
    const-string v3, "statusbar"

    move-object/from16 v0, v114

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4f

    move-object/from16 v113, v114

    .end local v114           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_15
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    :goto_17
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v118, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_e

    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v118, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1e
    const-string v3, "textservices"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4e

    move-object/from16 v117, v118

    .end local v118           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v94, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v94, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_20
    const-string v3, "netstats"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4d

    move-object/from16 v12, v94

    .end local v94           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_22
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4c

    :goto_1a
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v133, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v133

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .end local v132           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v133, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_24
    const-string v3, "wifip2p"

    move-object/from16 v0, v133

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4b

    move-object/from16 v132, v133

    .end local v133           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v132       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v131, Lcom/android/server/WifiService;

    move-object/from16 v0, v131

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_12

    .end local v130           #wifi:Lcom/android/server/WifiService;
    .local v131, wifi:Lcom/android/server/WifiService;
    :try_start_26
    const-string v3, "wifi"

    move-object/from16 v0, v131

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_4a

    move-object/from16 v130, v131

    .end local v131           #wifi:Lcom/android/server/WifiService;
    .restart local v130       #wifi:Lcom/android/server/WifiService;
    :goto_1c
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v60, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    .end local v59           #connectivity:Lcom/android/server/ConnectivityService;
    .local v60, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_28
    const-string v3, "connectivity"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v60

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v130 .. v130}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    invoke-virtual/range {v132 .. v132}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/ConnectivityService;->startCne()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_49

    move-object/from16 v59, v60

    .end local v60           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v59       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "VzwConnectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v126, Lcom/motorola/server/VzwConnectivityService;

    move-object/from16 v0, v126

    invoke-direct {v0, v4}, Lcom/motorola/server/VzwConnectivityService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_14

    .end local v125           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .local v126, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :try_start_2a
    const-string v3, "vzwconnectivity"

    move-object/from16 v0, v126

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v126

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_48

    move-object/from16 v125, v126

    .end local v126           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v125       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :goto_1e
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v111

    const-string v3, "servicediscovery"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_15

    :goto_1f
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v116, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .end local v115           #throttle:Lcom/android/server/ThrottleService;
    .local v116, throttle:Lcom/android/server/ThrottleService;
    :try_start_2d
    const-string v3, "throttle"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_47

    move-object/from16 v115, v116

    .end local v116           #throttle:Lcom/android/server/ThrottleService;
    .restart local v115       #throttle:Lcom/android/server/ThrottleService;
    :goto_20
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17

    :goto_21
    if-eqz v91, :cond_5

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_5
    if-eqz v43, :cond_6

    :try_start_2f
    invoke-virtual/range {v43 .. v43}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    :cond_6
    :goto_22
    if-eqz v61, :cond_7

    :try_start_30
    invoke-virtual/range {v61 .. v61}, Landroid/content/ContentService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    :cond_7
    :goto_23
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v98, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v113

    move-object/from16 v2, v80

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .local v98, notification:Lcom/android/server/NotificationManagerService;
    :try_start_32
    const-string v3, "notification"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v98

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_46

    move-object/from16 v97, v98

    .end local v98           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    :goto_24
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v83, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .local v83, location:Lcom/android/server/LocationManagerService;
    :try_start_35
    const-string v3, "location"

    move-object/from16 v0, v83

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_45

    move-object/from16 v82, v83

    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    :goto_26
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v63, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .end local v62           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v63, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_37
    const-string v3, "country_detector"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_44

    move-object/from16 v62, v63

    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_27
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110051

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v108

    .local v108, sensorHubExists:Z
    if-eqz v108, :cond_8

    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "SensorHub Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v107, Lcom/motorola/server/SensorHubService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/motorola/server/SensorHubService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1e

    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .local v107, sensorHub:Lcom/motorola/server/SensorHubService;
    :try_start_39
    const-string v3, "sensorhub"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_43

    move-object/from16 v106, v107

    .end local v107           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    :cond_8
    :goto_28
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1f

    :goto_29
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_20

    :goto_2a
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Starting Checkin Mot Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "checkin_mot"

    new-instance v9, Lcom/motorola/android/server/checkin/CheckinService;

    invoke-direct {v9, v4}, Lcom/motorola/android/server/checkin/CheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_21

    :goto_2b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_9

    new-instance v129, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v129

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_22

    .end local v128           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v129, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3e
    const-string v3, "wallpaper"

    move-object/from16 v0, v129

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_42

    move-object/from16 v128, v129

    .end local v129           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v128       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_9
    :goto_2c
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_23

    :cond_a
    :goto_2d
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcom/android/server/DockObserver;

    move-object/from16 v0, v68

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .end local v67           #dock:Lcom/android/server/DockObserver;
    .local v68, dock:Lcom/android/server/DockObserver;
    move-object/from16 v67, v68

    .end local v68           #dock:Lcom/android/server/DockObserver;
    .restart local v67       #dock:Lcom/android/server/DockObserver;
    :goto_2e
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_25

    :goto_2f
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v122, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_26

    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .local v122, usb:Lcom/android/server/usb/UsbService;
    :try_start_43
    const-string v3, "usb"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_41

    move-object/from16 v121, v122

    .end local v122           #usb:Lcom/android/server/usb/UsbService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    :goto_30
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v110, Lcom/android/server/SerialService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_27

    .end local v109           #serial:Lcom/android/server/SerialService;
    .local v110, serial:Lcom/android/server/SerialService;
    :try_start_45
    const-string v3, "serial"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_40

    move-object/from16 v109, v110

    .end local v110           #serial:Lcom/android/server/SerialService;
    .restart local v109       #serial:Lcom/android/server/SerialService;
    :goto_31
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Mot Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v90, Lcom/motorola/server/MotDockObserver;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/motorola/server/MotDockObserver;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_28

    .end local v89           #motDock:Lcom/motorola/server/MotDockObserver;
    .local v90, motDock:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v89, v90

    .end local v90           #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v89       #motDock:Lcom/motorola/server/MotDockObserver;
    :goto_32
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v120, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_29

    .end local v119           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v120, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v119, v120

    .end local v120           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v119       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_33
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2a

    :goto_34
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v48, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2b

    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .local v48, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4a
    const-string v3, "appwidget"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_3f

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2c

    .end local v104           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v105, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v104, v105

    .end local v105           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v104       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_36
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2d

    :goto_37
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "msm8960"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .local v49, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v3, "AtCmdFwd"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2e

    .end local v49           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_38
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2f

    :goto_39
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v96, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_30

    .end local v95           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v96, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v95, v96

    .end local v96           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v95       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3a
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "Mot Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v88, Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .local v88, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :try_start_51
    const-string v3, "mot_device_policy"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_3e

    move-object/from16 v87, v88

    .end local v88           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :goto_3b
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v57, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_32

    .end local v56           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v57, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_53
    const-string v3, "commontime_management"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_3d

    move-object/from16 v56, v57

    .end local v57           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3c
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    :goto_3d
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v70, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_56
    const-string v3, "dreams"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_3c

    move-object/from16 v69, v70

    .end local v70           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v91           #mountService:Lcom/android/server/MountService;
    .end local v108           #sensorHubExists:Z
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_b
    :goto_3e
    invoke-virtual/range {v134 .. v134}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .local v29, safeMode:Z
    if-eqz v29, :cond_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_3f
    :try_start_57
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    :goto_40
    :try_start_58
    invoke-virtual/range {v84 .. v84}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    :goto_41
    if-eqz v65, :cond_c

    :try_start_59
    invoke-virtual/range {v65 .. v65}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    :cond_c
    :goto_42
    if-eqz v97, :cond_d

    :try_start_5a
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_38

    :cond_d
    :goto_43
    if-eqz v87, :cond_e

    invoke-virtual/range {v87 .. v87}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->systemReady()V

    :cond_e
    :try_start_5b
    invoke-virtual/range {v134 .. v134}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_39

    :goto_44
    if-eqz v29, :cond_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_f
    invoke-virtual/range {v134 .. v134}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v58

    .local v58, config:Landroid/content/res/Configuration;
    new-instance v86, Landroid/util/DisplayMetrics;

    invoke-direct/range {v86 .. v86}, Landroid/util/DisplayMetrics;-><init>()V

    .local v86, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v127

    check-cast v127, Landroid/view/WindowManager;

    .local v127, w:Landroid/view/WindowManager;
    invoke-interface/range {v127 .. v127}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v58

    move-object/from16 v1, v86

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    :try_start_5c
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    :goto_45
    move-object/from16 v17, v4

    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v59

    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v67

    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v25, v89

    .local v25, motDockF:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v24, v121

    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v36, v115

    .local v36, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v119

    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v47

    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v128

    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v77

    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v104

    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v82

    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v35, v62

    .local v35, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v37, v95

    .local v37, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v38, v56

    .local v38, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v39, v117

    .local v39, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v113

    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v40, v69

    .local v40, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v41, v79

    .local v41, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v42, v51

    .local v42, bluetoothF:Landroid/server/BluetoothService;
    move-object/from16 v34, v106

    .local v34, sensorHubF:Lcom/motorola/server/SensorHubService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v42}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/motorola/server/MotDockObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/motorola/server/SensorHubService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #motDockF:Lcom/motorola/server/MotDockObserver;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #sensorHubF:Lcom/motorola/server/SensorHubService;
    .end local v35           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v36           #throttleF:Lcom/android/server/ThrottleService;
    .end local v37           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v38           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v39           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v40           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v41           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v42           #bluetoothF:Landroid/server/BluetoothService;
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v56           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v58           #config:Landroid/content/res/Configuration;
    .end local v59           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v61           #contentService:Landroid/content/ContentService;
    .end local v62           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v67           #dock:Lcom/android/server/DockObserver;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v72           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v74           #factoryTest:I
    .end local v75           #factoryTestStr:Ljava/lang/String;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v79           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v86           #metrics:Landroid/util/DisplayMetrics;
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v89           #motDock:Lcom/motorola/server/MotDockObserver;
    .end local v95           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #pm:Landroid/content/pm/IPackageManager;
    .end local v104           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v109           #serial:Lcom/android/server/SerialService;
    .end local v111           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v115           #throttle:Lcom/android/server/ThrottleService;
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v119           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .end local v125           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .end local v127           #w:Landroid/view/WindowManager;
    .end local v128           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v130           #wifi:Lcom/android/server/WifiService;
    .end local v132           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v134           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_11
    const/16 v103, 0x0

    goto/16 :goto_0

    .restart local v103       #reboot:Z
    :cond_12
    const/16 v102, 0x0

    .restart local v102       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .end local v102           #reason:Ljava/lang/String;
    .end local v103           #reboot:Z
    .restart local v75       #factoryTestStr:Ljava/lang/String;
    :cond_13
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    goto/16 :goto_2

    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v61       #contentService:Landroid/content/ContentService;
    .restart local v64       #cryptState:Ljava/lang/String;
    .restart local v67       #dock:Lcom/android/server/DockObserver;
    .restart local v74       #factoryTest:I
    .restart local v79       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    .restart local v89       #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v93       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v95       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v99       #onlyCore:Z
    .restart local v100       #pm:Landroid/content/pm/IPackageManager;
    .restart local v104       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v109       #serial:Lcom/android/server/SerialService;
    .restart local v111       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v115       #throttle:Lcom/android/server/ThrottleService;
    .restart local v119       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    .restart local v125       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v130       #wifi:Lcom/android/server/WifiService;
    .restart local v132       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v134       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_14
    :try_start_5d
    const-string v3, "1"

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v99, 0x1

    goto/16 :goto_3

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_4

    .restart local v76       #firstBoot:Z
    :catch_0
    move-exception v71

    .local v71, e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_1

    goto/16 :goto_6

    .end local v64           #cryptState:Ljava/lang/String;
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v76           #firstBoot:Z
    .end local v99           #onlyCore:Z
    :catch_1
    move-exception v71

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v50

    .end local v50           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v71, e:Ljava/lang/RuntimeException;
    :goto_47
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v71           #e:Ljava/lang/RuntimeException;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #battery:Lcom/android/server/BatteryService;
    .restart local v64       #cryptState:Ljava/lang/String;
    .restart local v76       #firstBoot:Z
    .restart local v99       #onlyCore:Z
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_7

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v50           #battery:Lcom/android/server/BatteryService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :cond_17
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_19
    const/4 v3, 0x1

    move/from16 v0, v74

    if-ne v0, v3, :cond_1a

    :try_start_5e
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_2
    move-exception v71

    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto :goto_47

    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :cond_1a
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v52, Landroid/server/BluetoothService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_2

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .local v52, bluetooth:Landroid/server/BluetoothService;
    :try_start_5f
    const-string v3, "bluetooth"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v52 .. v52}, Landroid/server/BluetoothService;->initAfterRegistration()V

    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    new-instance v54, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_5b

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v54, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_60
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v52 .. v52}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_5c

    move-object/from16 v53, v54

    .end local v54           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1b
    :try_start_61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    .local v45, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    .local v55, bluetoothOn:I
    if-nez v45, :cond_1c

    if-eqz v55, :cond_1c

    invoke-virtual/range {v52 .. v52}, Landroid/server/BluetoothService;->enable()Z
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_5b

    :cond_1c
    move-object/from16 v51, v52

    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .end local v45           #airplaneModeOn:I
    .end local v55           #bluetoothOn:I
    .end local v64           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v99           #onlyCore:Z
    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    .restart local v128       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v71

    .local v71, e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "SystemServer"

    const-string v9, "Failure starting encryption service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    :catch_8
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v71

    move-object/from16 v8, v93

    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting VzwConnectivityService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v108       #sensorHubExists:Z
    :catch_1e
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SensorHub Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting Checkin Mot Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MotDockObserver"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .end local v71           #e:Ljava/lang/Throwable;
    :cond_1d
    const-string v3, "SystemServer"

    const-string v9, "not start AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    :catch_2f
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "falure starting MotDevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .end local v71           #e:Ljava/lang/Throwable;
    .end local v91           #mountService:Lcom/android/server/MountService;
    .end local v108           #sensorHubExists:Z
    .restart local v29       #safeMode:Z
    :cond_1e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3f

    :catch_35
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .end local v71           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v58       #config:Landroid/content/res/Configuration;
    .restart local v86       #metrics:Landroid/util/DisplayMetrics;
    .restart local v127       #w:Landroid/view/WindowManager;
    :catch_3a
    move-exception v71

    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v58           #config:Landroid/content/res/Configuration;
    .end local v62           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v72           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v86           #metrics:Landroid/util/DisplayMetrics;
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v127           #w:Landroid/view/WindowManager;
    .end local v128           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #battery:Lcom/android/server/BatteryService;
    .restart local v64       #cryptState:Ljava/lang/String;
    .restart local v76       #firstBoot:Z
    .restart local v93       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v99       #onlyCore:Z
    :catch_3b
    move-exception v3

    goto/16 :goto_5

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v50           #battery:Lcom/android/server/BatteryService;
    .end local v64           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v99           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v70       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v108       #sensorHubExists:Z
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3c
    move-exception v71

    move-object/from16 v69, v70

    .end local v70           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_60

    .end local v56           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3d
    move-exception v71

    move-object/from16 v56, v57

    .end local v57           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto :goto_5f

    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v88       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :catch_3e
    move-exception v71

    move-object/from16 v87, v88

    .end local v88           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    goto/16 :goto_5e

    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v48       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3f
    move-exception v71

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5d

    .end local v109           #serial:Lcom/android/server/SerialService;
    .restart local v110       #serial:Lcom/android/server/SerialService;
    :catch_40
    move-exception v71

    move-object/from16 v109, v110

    .end local v110           #serial:Lcom/android/server/SerialService;
    .restart local v109       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5c

    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .restart local v122       #usb:Lcom/android/server/usb/UsbService;
    :catch_41
    move-exception v71

    move-object/from16 v121, v122

    .end local v122           #usb:Lcom/android/server/usb/UsbService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5b

    .end local v128           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v129       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_42
    move-exception v71

    move-object/from16 v128, v129

    .end local v129           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v128       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5a

    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v107       #sensorHub:Lcom/motorola/server/SensorHubService;
    :catch_43
    move-exception v71

    move-object/from16 v106, v107

    .end local v107           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    goto/16 :goto_59

    .end local v62           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v108           #sensorHubExists:Z
    .restart local v63       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_44
    move-exception v71

    move-object/from16 v62, v63

    .end local v63           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_58

    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .restart local v83       #location:Lcom/android/server/LocationManagerService;
    :catch_45
    move-exception v71

    move-object/from16 v82, v83

    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_57

    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v98       #notification:Lcom/android/server/NotificationManagerService;
    :catch_46
    move-exception v71

    move-object/from16 v97, v98

    .end local v98           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_56

    .end local v115           #throttle:Lcom/android/server/ThrottleService;
    .restart local v116       #throttle:Lcom/android/server/ThrottleService;
    :catch_47
    move-exception v71

    move-object/from16 v115, v116

    .end local v116           #throttle:Lcom/android/server/ThrottleService;
    .restart local v115       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_55

    .end local v125           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v126       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :catch_48
    move-exception v71

    move-object/from16 v125, v126

    .end local v126           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v125       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    goto/16 :goto_54

    .end local v59           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v60       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_49
    move-exception v71

    move-object/from16 v59, v60

    .end local v60           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v59       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_53

    .end local v130           #wifi:Lcom/android/server/WifiService;
    .restart local v131       #wifi:Lcom/android/server/WifiService;
    :catch_4a
    move-exception v71

    move-object/from16 v130, v131

    .end local v131           #wifi:Lcom/android/server/WifiService;
    .restart local v130       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_52

    .end local v132           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v133       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4b
    move-exception v71

    move-object/from16 v132, v133

    .end local v133           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v132       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_51

    :catch_4c
    move-exception v71

    goto/16 :goto_50

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v93       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v94       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4d
    move-exception v71

    move-object/from16 v12, v94

    .end local v94           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4f

    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v118       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4e
    move-exception v71

    move-object/from16 v117, v118

    .end local v118           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4e

    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v114       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4f
    move-exception v71

    move-object/from16 v113, v114

    .end local v114           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4d

    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_50
    move-exception v71

    move-object/from16 v65, v66

    .end local v66           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4c

    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v85       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_51
    move-exception v71

    move-object/from16 v84, v85

    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_4b

    .end local v91           #mountService:Lcom/android/server/MountService;
    .restart local v92       #mountService:Lcom/android/server/MountService;
    :catch_52
    move-exception v71

    move-object/from16 v91, v92

    .end local v92           #mountService:Lcom/android/server/MountService;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4a

    .end local v91           #mountService:Lcom/android/server/MountService;
    :catch_53
    move-exception v3

    goto/16 :goto_11

    .end local v72           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v73       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :catch_54
    move-exception v71

    move-object/from16 v72, v73

    .end local v73           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v72       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    goto/16 :goto_49

    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_55
    move-exception v71

    move-object/from16 v77, v78

    .end local v78           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_48

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v62           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v72           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v128           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #battery:Lcom/android/server/BatteryService;
    .restart local v101       #power:Lcom/android/server/PowerManagerService;
    :catch_56
    move-exception v71

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v50

    .end local v50           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v101

    .end local v101           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_47

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #battery:Lcom/android/server/BatteryService;
    .restart local v64       #cryptState:Ljava/lang/String;
    .restart local v76       #firstBoot:Z
    .restart local v99       #onlyCore:Z
    :catch_57
    move-exception v71

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v50

    .end local v50           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v43, v44

    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_47

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #battery:Lcom/android/server/BatteryService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    :catch_58
    move-exception v71

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v50

    .end local v50           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_47

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    :catch_59
    move-exception v71

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_47

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v71

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_47

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v71

    move-object/from16 v51, v52

    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_47

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v123           #vibrator:Lcom/android/server/VibratorService;
    .restart local v52       #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v124       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v71

    move-object/from16 v53, v54

    .end local v54           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v51, v52

    .end local v52           #bluetooth:Landroid/server/BluetoothService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v123, v124

    .end local v124           #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_47

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #battery:Lcom/android/server/BatteryService;
    :catch_5d
    move-exception v71

    move-object/from16 v43, v44

    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v50           #battery:Lcom/android/server/BatteryService;
    .end local v64           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v99           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1f
    move-object/from16 v8, v93

    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3e
.end method
