.class public Landroid/net/wifi/MotWifiScan;
.super Ljava/lang/Object;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;,
        Landroid/net/wifi/MotWifiScan$MotPNOCtrl;,
        Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_PNO_APP_LIST_SIZE:I = 0x4

.field private static MOTOSCAN_ENABLED:Z = false

.field public static final MOT_ACTION_PNO_STARTED:Ljava/lang/String; = "com.motorola.wifi.MotWifiScan.action.PNO_STARTED"

.field public static final MOT_ACTION_PNO_STOPPED:Ljava/lang/String; = "com.motorola.wifi.MotWifiScan.action.PNO_STOPPED"

.field public static final MOT_WIFI_MOD_PNO:I = 0x0

.field public static final MOT_WIFI_MOD_WIFISCAN:I = 0x1

.field private static final PNO_DBG:Z = false

.field private static final PNO_ENABLED:Z = false

.field private static final PNO_MAX_APP_SSID_LIST_SZ:I = 0x4

.field private static final PNO_MAX_DBA_SSID_LIST_SZ:I = 0xa

.field private static final PNO_MAX_SSID_LIST_SZ:I = 0x10

.field private static final PNO_MAX_SUP_SSID_LIST_SZ:I = 0x2

.field private static final PNO_TAG:Ljava/lang/String; = "PNO-WIFI"

.field private static final TAG:Ljava/lang/String; = "MotWifiScan"

.field public static final WIFISCAN_REGISTER_MOVEMENT_LISTENER:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBootCompleted:Z

.field private mMotPNOCtrl:Landroid/net/wifi/MotWifiScan$MotPNOCtrl;

.field private mMotWifiAppSsidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMotWifiPno:Landroid/net/wifi/MotWifiSsidDb;

.field private mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

.field private mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

.field private mPluggedType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private mSupplicantConnected:Z

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mWifiEnabled:Z

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiState:I

.field public mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/MotWifiScan;->MOTOSCAN_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiNative;)V
    .locals 6
    .parameter "context"
    .parameter "stateMachine"
    .parameter "wn"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 415
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v5, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    .line 93
    iput-boolean v3, p0, Landroid/net/wifi/MotWifiScan;->mIsBootCompleted:Z

    .line 94
    iput-boolean v3, p0, Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z

    .line 109
    iput-boolean v3, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z

    .line 110
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 113
    iput v3, p0, Landroid/net/wifi/MotWifiScan;->mPluggedType:I

    .line 114
    iput-boolean v4, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    .line 115
    iput v4, p0, Landroid/net/wifi/MotWifiScan;->mWifiState:I

    .line 145
    new-instance v1, Landroid/net/wifi/MotWifiScan$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/MotWifiScan$1;-><init>(Landroid/net/wifi/MotWifiScan;)V

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    .line 417
    iput-object p2, p0, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 418
    iput-object p3, p0, Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 426
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MotWifiScan"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 428
    new-instance v1, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;-><init>(Landroid/net/wifi/MotWifiScan;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    .line 430
    iput v3, p0, Landroid/net/wifi/MotWifiScan;->mPluggedType:I

    .line 431
    iput-boolean v4, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    .line 440
    iput-object v5, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    .line 442
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan;->registerForBroadcasts()V

    .line 445
    new-instance v1, Landroid/net/wifi/MotWifiSsidDb;

    invoke-direct {v1, p1, v4}, Landroid/net/wifi/MotWifiSsidDb;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiPno:Landroid/net/wifi/MotWifiSsidDb;

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    .line 448
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/MotWifiScan;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Landroid/net/wifi/MotWifiScan;->mWifiState:I

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/MotWifiScan;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Landroid/net/wifi/MotWifiScan;->mWifiState:I

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/MotWifiScan;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan;->mSupplicantConnected:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/MotWifiScan;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/MotWifiScan;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Landroid/net/wifi/MotWifiScan;->MOTOSCAN_ENABLED:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/wifi/MotWifiScan;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan;->unregisterSensorHubMovement()V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/MotWifiScan;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$502(Landroid/net/wifi/MotWifiScan;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Landroid/net/wifi/MotWifiScan;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/wifi/MotWifiScan;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan;->registerSensorHubMovement()V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/MotWifiScan;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$702(Landroid/net/wifi/MotWifiScan;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Landroid/net/wifi/MotWifiScan;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$800(Landroid/net/wifi/MotWifiScan;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/MotWifiScan;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Landroid/net/wifi/MotWifiScan;->mPluggedType:I

    return v0
.end method

.method private addPnoListFromApplication(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const/4 v1, 0x0

    .line 579
    :goto_0
    return v1

    .line 574
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 576
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 579
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private addPnoListFromDatabase(Ljava/util/ArrayList;)Z
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v14

    .line 588
    .local v14, listStr:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 590
    const/16 v22, 0x0

    .line 709
    :goto_0
    return v22

    .line 596
    :cond_0
    const-string v22, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 597
    .local v12, lines:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 599
    const/16 v22, 0x0

    goto :goto_0

    .line 603
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v20, ssidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 605
    aget-object v22, v12, v9

    const-string v23, "\t"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 609
    .local v18, result:[Ljava/lang/String;
    const/16 v22, 0x0

    :try_start_0
    aget-object v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 615
    .local v17, networkId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v22, v0

    const-string/jumbo v23, "ssid"

    move-object/from16 v0, v22

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, assid:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 618
    const/4 v6, 0x0

    .line 619
    .local v6, dup:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_2

    .line 620
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 621
    const/4 v6, 0x1

    .line 625
    :cond_2
    if-nez v6, :cond_3

    .line 626
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 604
    .end local v3           #assid:Ljava/lang/String;
    .end local v6           #dup:Z
    .end local v10           #j:I
    .end local v17           #networkId:I
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 611
    :catch_0
    move-exception v7

    .line 612
    .local v7, e:Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 619
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #assid:Ljava/lang/String;
    .restart local v6       #dup:Z
    .restart local v10       #j:I
    .restart local v17       #networkId:I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 633
    .end local v3           #assid:Ljava/lang/String;
    .end local v6           #dup:Z
    .end local v10           #j:I
    .end local v17           #networkId:I
    .end local v18           #result:[Ljava/lang/String;
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 636
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 640
    :cond_6
    const/4 v11, 0x0

    .local v11, l:I
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_9

    .line 645
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 649
    .local v21, ts:Ljava/lang/String;
    const/16 v22, 0x22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 650
    .local v15, lq:I
    if-ltz v15, :cond_8

    .line 651
    const/16 v22, 0x22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 652
    .local v19, rq:I
    move/from16 v0, v19

    if-le v0, v15, :cond_7

    .line 654
    add-int/lit8 v22, v15, 0x1

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 669
    .end local v19           #rq:I
    .local v8, fs:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v20

    invoke-interface {v0, v11, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v8           #fs:Ljava/lang/String;
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 656
    .restart local v19       #rq:I
    :catch_1
    move-exception v7

    .line 657
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_6

    .line 661
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    move-object/from16 v8, v21

    .restart local v8       #fs:Ljava/lang/String;
    goto :goto_5

    .line 665
    .end local v8           #fs:Ljava/lang/String;
    .end local v19           #rq:I
    :cond_8
    move-object/from16 v8, v21

    .restart local v8       #fs:Ljava/lang/String;
    goto :goto_5

    .line 674
    .end local v8           #fs:Ljava/lang/String;
    .end local v15           #lq:I
    .end local v21           #ts:Ljava/lang/String;
    :cond_9
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    .line 675
    .local v4, count:I
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v4, :cond_b

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ge v11, v0, :cond_b

    .line 676
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 677
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 683
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mMotWifiPno:Landroid/net/wifi/MotWifiSsidDb;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/MotWifiSsidDb;->getOrderedSsidList()[Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, dbList:[Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 686
    array-length v4, v5

    .line 687
    const/16 v13, 0xa

    .line 688
    .local v13, listSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 689
    add-int/lit8 v13, v13, 0x4

    .line 692
    :cond_c
    const/4 v11, 0x0

    const/16 v16, 0x0

    .local v16, m:I
    :goto_8
    if-ge v11, v4, :cond_f

    move/from16 v0, v16

    if-ge v0, v13, :cond_f

    .line 694
    aget-object v22, v5, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    aget-object v22, v5, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 696
    aget-object v22, v5, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v16, v16, 0x1

    .line 692
    :cond_d
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 698
    :cond_e
    aget-object v22, v5, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mMotWifiPno:Landroid/net/wifi/MotWifiSsidDb;

    move-object/from16 v22, v0

    aget-object v23, v5, v11

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/MotWifiSsidDb;->deleteSsidInDb(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 702
    const-string v22, "PNO-WIFI"

    const-string v23, "delete SSID in DB failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 709
    .end local v13           #listSize:I
    .end local v16           #m:I
    :cond_f
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method private registerForBroadcasts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 455
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 473
    sget-boolean v0, Landroid/net/wifi/MotWifiScan;->MOTOSCAN_ENABLED:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 478
    :cond_0
    sget-boolean v0, Landroid/net/wifi/MotWifiScan;->MOTOSCAN_ENABLED:Z

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 485
    :cond_1
    return-void
.end method

.method private registerSensorHubMovement()V
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    if-nez v0, :cond_0

    .line 1231
    new-instance v0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;-><init>(Landroid/net/wifi/MotWifiScan;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    .line 1233
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    if-eqz v0, :cond_2

    .line 1235
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->startMovementMonitor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1236
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    .line 1241
    :cond_1
    :goto_0
    return-void

    .line 1239
    :cond_2
    const-string v0, "MotWifiScan"

    const-string v1, "mMotWifiScanMovementListener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterSensorHubMovement()V
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiScanMovementListener:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    invoke-virtual {v0}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->stopMovementMonitor()V

    .line 1249
    :goto_0
    return-void

    .line 1247
    :cond_0
    const-string v0, "MotWifiScan"

    const-string v1, "mMotWifiScanMovementListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method bgScanStatusChange(Z)V
    .locals 1
    .parameter "isActive"

    .prologue
    .line 1251
    sget-boolean v0, Landroid/net/wifi/MotWifiScan;->MOTOSCAN_ENABLED:Z

    if-nez v0, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1253
    :cond_0
    if-eqz p1, :cond_1

    .line 1255
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan;->unregisterSensorHubMovement()V

    goto :goto_0

    .line 1259
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/MotWifiScan;->registerSensorHubMovement()V

    goto :goto_0
.end method

.method public dbInsertSsid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 714
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiPno:Landroid/net/wifi/MotWifiSsidDb;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/MotWifiSsidDb;->insertSsid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableBackgroundPnoScan(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 524
    const/4 v2, 0x1

    .line 527
    .local v2, ret:Z
    if-ne p1, v4, :cond_2

    .line 529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, pnoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 537
    invoke-static {}, Landroid/net/wifi/WifiNative;->pnoClearSsid()Z

    .line 540
    invoke-direct {p0, v1}, Landroid/net/wifi/MotWifiScan;->addPnoListFromApplication(Ljava/util/ArrayList;)Z

    .line 543
    invoke-direct {p0, v1}, Landroid/net/wifi/MotWifiScan;->addPnoListFromDatabase(Ljava/util/ArrayList;)Z

    .line 546
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 547
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->pnoAddSsid(Ljava/lang/String;)Z

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 553
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 564
    .end local v0           #i:I
    .end local v1           #pnoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return v4

    .line 561
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    goto :goto_1
.end method

.method public notifyDriverPNO()Z
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationSsidList(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 493
    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v3

    .line 499
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 501
    .local v2, listSize:I
    if-lez v2, :cond_2

    .line 502
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 503
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    .line 504
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 510
    .local v0, currSize:I
    if-lez v0, :cond_0

    .line 511
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan;->mMotWifiAppSsidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 518
    .end local v0           #currSize:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method
