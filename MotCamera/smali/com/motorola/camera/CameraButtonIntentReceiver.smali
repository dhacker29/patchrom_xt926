.class public Lcom/motorola/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# static fields
.field private static final ACTION_GESTURE_START:Ljava/lang/String; = "motorola.camera.intent.action.START"

.field private static final ACTION_INSTANT_ON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON_INSTANT_ON"

.field public static final CATEGORY_QUICK_LAUNCH:Ljava/lang/String; = "motorola.intent.category.QUICK_LAUNCH"

.field private static final DISABLED:Ljava/lang/String; = "disabled"

.field public static final GESTURE_DATA:Ljava/lang/String; = "gesture"

.field public static final INSTANT_ON_DATA:Ljava/lang/String; = "instant-on"

.field private static final INSTANT_ON_KEY_EVENT:Ljava/lang/String; = "press"

.field private static final QUICK_PRESS:Ljava/lang/String; = "single_press"

.field private static final TAG:Ljava/lang/String; = "MotoCameraReceiver"

.field private static final VIBRATE_LENGTH:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private buildIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "motorola.camera.intent.action.START"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :cond_0
    const-string v1, "android.intent.action.CAMERA_BUTTON_INSTANT_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string v1, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :cond_1
    const-string v1, "com.motorola.camera"

    const-string v2, "com.motorola.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method private compare(Landroid/view/KeyEvent;Ljava/lang/String;)Z
    .locals 3
    .parameter "event"
    .parameter "setting"

    .prologue
    const/4 v0, 0x1

    .line 163
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 167
    const/16 v1, 0x80

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-ne v1, v2, :cond_3

    .line 169
    const-string v1, "press_hold"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_3
    const-string v1, "single_press"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    sget-boolean v17, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v17

    sget-object v18, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual/range {v17 .. v18}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 63
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, action:Ljava/lang/String;
    sget-boolean v17, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v17, :cond_4

    .line 65
    if-eqz v3, :cond_1

    const-string v17, "MotoCameraReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent action: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 67
    .local v5, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 68
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 69
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 70
    const-string v18, "MotoCameraReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent category: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v9           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 74
    .local v6, extras:Landroid/os/Bundle;
    if-eqz v6, :cond_3

    .line 75
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 76
    .local v10, key:Ljava/lang/String;
    const-string v17, "MotoCameraReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent extra: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "motorola.camera.intent.action.START"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 83
    .local v14, time:J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "9, 0.0, 0.0, 0.0, "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "GESTURE_RECEIVED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/Util;->logGestureData(Ljava/lang/String;)V

    .line 87
    .end local v5           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v14           #time:J
    :cond_4
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/BlurCheckin;->setCameraLaunchIntent(Landroid/content/Intent;)V

    .line 88
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/camera/CameraButtonIntentReceiver;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 89
    .local v4, cameraIntent:Landroid/content/Intent;
    const-string v17, "android.intent.action.CAMERA_BUTTON_INSTANT_ON"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 90
    const-string v17, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/view/KeyEvent;

    .line 92
    .local v11, keyEvent:Landroid/view/KeyEvent;
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/motorola/camera/BlurCheckin;->setInstantOnKeyEvent(Landroid/view/KeyEvent;)V

    .line 93
    new-instance v12, Lcom/motorola/camera/PreferenceSettings;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/motorola/camera/PreferenceSettings;-><init>(Landroid/content/Context;)V

    .line 94
    .local v12, mPrefSettings:Lcom/motorola/camera/PreferenceSettings;
    const-string v17, "pref_instant_on_available_key"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/motorola/camera/PreferenceSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_5

    .line 95
    invoke-virtual {v12}, Lcom/motorola/camera/PreferenceSettings;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_instant_on_available_key"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    :cond_5
    const-string v17, "pref_instant_on_key"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x7f0b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/motorola/camera/PreferenceSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, setting:Ljava/lang/String;
    const-string v17, "disabled"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/motorola/camera/CameraButtonIntentReceiver;->compare(Landroid/view/KeyEvent;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 103
    new-instance v8, Lcom/motorola/camera/InPocketDetector;

    invoke-direct {v8}, Lcom/motorola/camera/InPocketDetector;-><init>()V

    .line 104
    .local v8, inPocket:Lcom/motorola/camera/InPocketDetector;
    const/16 v17, 0x80

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 105
    const/16 v17, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/InPocketDetector;->setVibration(Landroid/content/Context;I)V

    .line 107
    :cond_6
    const/16 v17, 0x1f4

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v8, v0, v4, v1, v2}, Lcom/motorola/camera/InPocketDetector;->detect(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/Boolean;)V

    .line 123
    .end local v8           #inPocket:Lcom/motorola/camera/InPocketDetector;
    .end local v11           #keyEvent:Landroid/view/KeyEvent;
    .end local v12           #mPrefSettings:Lcom/motorola/camera/PreferenceSettings;
    .end local v13           #setting:Ljava/lang/String;
    :cond_7
    :goto_2
    return-void

    .line 110
    :cond_8
    const-string v17, "motorola.camera.intent.action.START"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 111
    const-string v17, "vibrator"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Vibrator;

    .line 112
    .local v16, vibrator:Landroid/os/Vibrator;
    const-wide/16 v17, 0x2d

    invoke-virtual/range {v16 .. v18}, Landroid/os/Vibrator;->vibrate(J)V

    .line 114
    .end local v16           #vibrator:Landroid/os/Vibrator;
    :cond_9
    const-string v17, "android.intent.action.CAMERA_BUTTON"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 115
    new-instance v12, Lcom/motorola/camera/PreferenceSettings;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/motorola/camera/PreferenceSettings;-><init>(Landroid/content/Context;)V

    .line 116
    .restart local v12       #mPrefSettings:Lcom/motorola/camera/PreferenceSettings;
    const-string v17, "pref_instant_on_available_key"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/motorola/camera/PreferenceSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_a

    .line 117
    invoke-virtual {v12}, Lcom/motorola/camera/PreferenceSettings;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_instant_on_available_key"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    .end local v12           #mPrefSettings:Lcom/motorola/camera/PreferenceSettings;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/CameraButtonIntentReceiver;->launchActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2
.end method
