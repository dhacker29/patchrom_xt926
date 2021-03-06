.class public Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
.super Ljava/lang/Object;
.source "HeadsetButtonDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;,
        Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DOUBLE_CLICK_KEY_TO_SEND:I = 0x57

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_CLICK_TIMEOUT:I = 0x0

.field private static final DOUBLE_LONG_PRESS_KEY_TO_SEND:I = 0x59

.field private static final EVENT_LONG_SEQUENCE_DETECTED:I = 0x2

.field private static final EVENT_LONG_SEQUENCE_FINISHED:I = 0x3

.field private static final EVENT_SEND_KEY_UP_TIMEOUT:I = 0x4

.field private static final EVENT_SHORT_SEQUENCE_DETECTED:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LONG_PRESS_TIMEOUT:I = 0x0

.field private static final SEND_KEY_INTERVAL:I = 0xc8

.field private static final SINGLE_CLICK_KEY_TO_SEND:I = 0x4f

.field private static final SINGLE_LONG_PRESS_KEY_TO_SEND:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "HeadsetBtnDetect"

.field private static final TRIPLE_CLICK_KEY_TO_SEND:I = 0x58

.field private static final UNKNOWN_PRESS_KEY_TO_SEND:I

.field private static final VDBG:Z

.field private static mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;


# instance fields
.field mBroadcastSend:Landroid/content/BroadcastReceiver;

.field private mClickCount:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

.field private mKeyDownFlags:I

.field private mKeyUpFlags:I

.field private mLongPress:Z

.field private mPreviousUpTimestamp:J

.field private mScanCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->LONG_PRESS_TIMEOUT:I

    .line 56
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->DOUBLE_CLICK_TIMEOUT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 351
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v1, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;-><init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;)V

    iput-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastSend:Landroid/content/BroadcastReceiver;

    .line 352
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mContext:Landroid/content/Context;

    .line 353
    new-instance v1, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;-><init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;)V

    iput-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    .line 354
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 355
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HeadsetBtnDetect"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleShortSequenceDetected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleLongSequenceDetected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleLongSequenceFinished(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleSendKeyUpTimeout(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
    .locals 2
    .parameter "context"

    .prologue
    .line 277
    const-class v1, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    .line 280
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleLongSequenceDetected(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 131
    iput-boolean v6, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mLongPress:Z

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;

    .line 135
    .local v0, header:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    #getter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$400(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I

    move-result v1

    .line 136
    .local v1, numClicks:I
    packed-switch v1, :pswitch_data_0

    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, whichKey:I
    const-string v3, "HeadsetBtnDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported headset sequence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " short clicks plus 1 long click"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    invoke-direct {p0, v0, v2, v6, v6}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntent(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;IZZ)V

    .line 157
    return-void

    .line 140
    .end local v2           #whichKey:I
    :pswitch_0
    const/16 v2, 0x4f

    .line 142
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 144
    .end local v2           #whichKey:I
    :pswitch_1
    const/16 v2, 0x5a

    .line 146
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 148
    .end local v2           #whichKey:I
    :pswitch_2
    const/16 v2, 0x59

    .line 150
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleLongSequenceFinished(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 162
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;

    .line 163
    .local v0, header:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    #getter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$400(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I

    move-result v1

    .line 164
    .local v1, numClicks:I
    packed-switch v1, :pswitch_data_0

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, whichKey:I
    const-string v3, "HeadsetBtnDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected headset sequence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " short clicks plus 1 long click"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntent(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;IZZ)V

    .line 186
    return-void

    .line 168
    .end local v2           #whichKey:I
    :pswitch_0
    const/16 v2, 0x4f

    .line 170
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 172
    .end local v2           #whichKey:I
    :pswitch_1
    const/16 v2, 0x5a

    .line 174
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 176
    .end local v2           #whichKey:I
    :pswitch_2
    const/16 v2, 0x59

    .line 178
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSendKeyUpTimeout(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 191
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 192
    .local v1, keyToSend:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;

    .line 194
    .local v0, header:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntent(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;IZZ)V

    .line 196
    return-void
.end method

.method private handleShortSequenceDetected(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;

    .line 109
    .local v0, header:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    #getter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$400(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I

    move-result v1

    .line 110
    .local v1, numClicks:I
    packed-switch v1, :pswitch_data_0

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, whichKey:I
    const-string v3, "HeadsetBtnDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported headset sequence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " short clicks"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntent(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;IZZ)V

    .line 128
    return-void

    .line 112
    .end local v2           #whichKey:I
    :pswitch_0
    const/16 v2, 0x4f

    .line 114
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 116
    .end local v2           #whichKey:I
    :pswitch_1
    const/16 v2, 0x57

    .line 118
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 120
    .end local v2           #whichKey:I
    :pswitch_2
    const/16 v2, 0x58

    .line 122
    .restart local v2       #whichKey:I
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendKeyOrIntent(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;IZZ)V
    .locals 25
    .parameter "header"
    .parameter "whichKey"
    .parameter "down"
    .parameter "longPress"

    .prologue
    .line 206
    const-string v5, "input"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v23

    .line 210
    .local v23, inputManager:Landroid/hardware/input/IInputManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    monitor-enter v6

    .line 211
    if-nez p2, :cond_1

    .line 212
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    .line 213
    monitor-exit v6

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-eqz p3, :cond_3

    .line 217
    const/4 v7, 0x0

    .line 218
    .local v7, action:I
    #getter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyDownFlags:I
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$500(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I

    move-result v13

    .line 219
    .local v13, flags:I
    if-nez p4, :cond_2

    .line 221
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    .line 223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v5, v8, v0, v9, v1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 225
    .local v24, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const-wide/16 v8, 0xc8

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v8, v9}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    .end local v24           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 235
    .local v3, curTime:J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    #getter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ScanCode:I
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$700(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I

    move-result v12

    const/16 v14, 0x101

    move-wide v5, v3

    move/from16 v8, p2

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 238
    .local v2, keyEvent:Landroid/view/KeyEvent;
    #getter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->SendIntent:Z
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$800(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 239
    sget-object v5, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_0

    .line 240
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    new-instance v15, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    const/4 v6, 0x0

    invoke-direct {v15, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v15, intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v15, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 243
    const-string v5, "HeadsetBtnDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendintent: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v5, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastSend:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v14 .. v21}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 229
    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    .end local v3           #curTime:J
    .end local v7           #action:I
    .end local v13           #flags:I
    .end local v15           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v7, 0x1

    .line 230
    .restart local v7       #action:I
    :try_start_1
    #getter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyUpFlags:I
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$600(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;)I

    move-result v13

    .restart local v13       #flags:I
    goto :goto_1

    .line 232
    .end local v7           #action:I
    .end local v13           #flags:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 253
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    .restart local v3       #curTime:J
    .restart local v7       #action:I
    .restart local v13       #flags:I
    :cond_4
    if-eqz v23, :cond_0

    .line 254
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v23

    invoke-interface {v0, v2, v5}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 255
    const-string v5, "HeadsetBtnDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "injectKeyEvent: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v22

    .line 259
    .local v22, ex:Landroid/os/RemoteException;
    const-string v5, "HeadsetBtnDetect"

    const-string v6, "IWindowManager threw RemoteException"

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public passKey(JIZZIII)Z
    .locals 10
    .parameter "when"
    .parameter "keyCode"
    .parameter "isInjected"
    .parameter "sendIntent"
    .parameter "action"
    .parameter "scanCode"
    .parameter "flags"

    .prologue
    .line 291
    const/16 v2, 0x4f

    if-ne p3, v2, :cond_0

    if-eqz p4, :cond_1

    .line 292
    :cond_0
    const/4 v2, 0x0

    .line 345
    :goto_0
    return v2

    .line 294
    :cond_1
    iget-object v9, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    monitor-enter v9

    .line 295
    :try_start_0
    new-instance v1, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    move-object v2, p0

    move v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;-><init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;IZIII)V

    .line 296
    .local v1, header:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    if-nez p6, :cond_5

    .line 297
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    if-lez v2, :cond_2

    .line 298
    iget-wide v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mPreviousUpTimestamp:J

    sub-long v2, p1, v2

    sget v4, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->DOUBLE_CLICK_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->removeMessages(I)V

    .line 309
    :cond_2
    :goto_1
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    if-nez v2, :cond_3

    .line 310
    move/from16 v0, p7

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mScanCode:I

    .line 311
    move/from16 v0, p8

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyDownFlags:I

    .line 313
    :cond_3
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    #setter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I
    invoke-static {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$402(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I

    .line 314
    #setter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->SendIntent:Z
    invoke-static {v1, p5}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$802(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;Z)Z

    .line 315
    move/from16 v0, p7

    #setter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ScanCode:I
    invoke-static {v1, v0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$702(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I

    .line 316
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyDownFlags:I

    #setter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyDownFlags:I
    invoke-static {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$502(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I

    .line 317
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 318
    .local v8, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    sget v3, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->LONG_PRESS_TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v2, v8, v3, v4}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    :goto_2
    monitor-exit v9

    .line 345
    const/4 v2, 0x1

    goto :goto_0

    .line 301
    .end local v8           #msg:Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    goto :goto_1

    .line 344
    .end local v1           #header:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 319
    .restart local v1       #header:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_8

    .line 320
    :try_start_1
    iput-wide p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mPreviousUpTimestamp:J

    .line 321
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->removeMessages(I)V

    .line 322
    iget-boolean v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mLongPress:Z

    if-nez v2, :cond_7

    .line 324
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    .line 325
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 326
    move/from16 v0, p8

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyUpFlags:I

    .line 328
    :cond_6
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyUpFlags:I

    #setter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->KeyUpFlags:I
    invoke-static {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$602(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I

    .line 329
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    #setter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I
    invoke-static {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$402(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I

    .line 330
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 331
    .restart local v8       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    sget v3, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->DOUBLE_CLICK_TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v2, v8, v3, v4}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 333
    .end local v8           #msg:Landroid/os/Message;
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mLongPress:Z

    .line 334
    iget v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    #setter for: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->ClickCount:I
    invoke-static {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;->access$402(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$PassPara;I)I

    .line 335
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 336
    .restart local v8       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    invoke-virtual {v2, v8}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    goto :goto_2

    .line 341
    .end local v8           #msg:Landroid/os/Message;
    :cond_8
    const-string v2, "HeadsetBtnDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled action type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
