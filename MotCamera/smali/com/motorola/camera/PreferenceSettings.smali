.class public Lcom/motorola/camera/PreferenceSettings;
.super Ljava/lang/Object;
.source "PreferenceSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/PreferenceSettings$MyEditor;
    }
.end annotation


# static fields
.field public static final CURRENT_LOCAL_VERSION:I = 0x2

.field public static final CURRENT_VERSION:I = 0x2

.field public static final KEY_CAMERA_EFFECT:Ljava/lang/String; = "pref_camera_effect_key"

.field public static final KEY_CAMERA_FLASH:Ljava/lang/String; = "pref_camera_flash_key"

.field public static final KEY_CAMERA_MODE:Ljava/lang/String; = "pref_camera_mode_key"

.field public static final KEY_CAMERA_MODE_TIMER:Ljava/lang/String; = "pref_camera_mode_timer_key"

.field public static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "pref_camera_resolution_key"

.field public static final KEY_CAMERA_SCENE:Ljava/lang/String; = "pref_camera_scene_key"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "pref_device_id_key"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "pref_exposure_key"

.field public static final KEY_FEEDBACK_HDR_DISMISSED:Ljava/lang/String; = "pref_feedback_hdr_dismissed"

.field public static final KEY_INSTANT_ON:Ljava/lang/String; = "pref_instant_on_key"

.field public static final KEY_INSTANT_ON_AVAILABLE:Ljava/lang/String; = "pref_instant_on_available_key"

.field public static final KEY_LOCAL_VERSION:Ljava/lang/String; = "pref_local_version"

.field public static final KEY_MOTOCAST:Ljava/lang/String; = "pref_motocast_key"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_record_location_key"

.field public static final KEY_RECORD_LOCATION_EULA:Ljava/lang/String; = "pref_record_location_eula_key"

.field public static final KEY_SHUTTER_TONE:Ljava/lang/String; = "pref_shutter_tone_key"

.field public static final KEY_STORAGE_LOCATION:Ljava/lang/String; = "pref_storage_location_key"

.field public static final KEY_VERSION:Ljava/lang/String; = "pref_version_key"

.field public static final KEY_VIDEO_EFFECT:Ljava/lang/String; = "pref_video_effect_key"

.field public static final KEY_VIDEO_FLASH:Ljava/lang/String; = "pref_video_flash_key"

.field public static final KEY_VIDEO_MODE:Ljava/lang/String; = "pref_video_mode_key"

.field public static final KEY_VIDEO_MODE_TIMELAPSE:Ljava/lang/String; = "pref_video_mode_timelapse_key"

.field public static final KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "pref_video_resolution_key"

.field public static final KEY_VIDEO_SCENE:Ljava/lang/String; = "pref_video_scene_key"

.field public static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "pref_video_stabilization_key"

.field public static final KEY_VOLUME_FUNCTION:Ljava/lang/String; = "pref_vol_func_key"

.field public static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PreferenceSetings"

.field public static final TIMELAPSE:Ljava/lang/String; = "TIMELAPSE"

.field public static final TIMER:Ljava/lang/String; = "TIMER"

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/motorola/camera/PreferenceSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefGlobal:Landroid/content/SharedPreferences;

.field private mPrefLocal:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/PreferenceSettings;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    .line 94
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 95
    sget-object v1, Lcom/motorola/camera/PreferenceSettings;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/motorola/camera/PreferenceSettings;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/motorola/camera/PreferenceSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/PreferenceSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static deleteOldCamPrefFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "prefName"

    .prologue
    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shared_prefs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, delFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 528
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/motorola/camera/PreferenceSettings;
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    sget-object v1, Lcom/motorola/camera/PreferenceSettings;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lcom/motorola/camera/PreferenceSettings;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/PreferenceSettings;

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 176
    const-string v0, "TIMER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "pref_camera_mode_timer_key"

    .line 181
    :goto_0
    return-object v0

    .line 178
    :cond_0
    const-string v0, "TIMELAPSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "pref_video_mode_timelapse_key"

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPrefName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "cameraId"

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasSecondLevelDialogs(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 166
    const-string v0, "TIMELAPSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TIMER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCheckBox(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 152
    const-string v0, "pref_camera_resolution_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_record_location_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_stabilization_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shutter_tone_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGlobal(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 141
    const-string v0, "pref_device_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_record_location_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_vol_func_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_record_location_eula_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_instant_on_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_instant_on_available_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shutter_tone_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_storage_location_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocation(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 194
    const-string v0, "pref_record_location_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSlidebar(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 186
    const-string v0, "pref_exposure_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSpinner(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 159
    const-string v0, "pref_video_resolution_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_vol_func_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_instant_on_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_storage_location_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTwoLineItem(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 190
    const-string v0, "pref_motocast_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "context"
    .parameter "pref"

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 399
    :try_start_0
    const-string v3, "pref_version_key"

    const/4 v4, -0x1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 404
    .local v2, version:I
    :goto_0
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PreferenceSetings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preference version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    if-ne v2, v7, :cond_2

    .line 426
    :goto_1
    return-void

    .line 400
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 401
    .local v1, ex:Ljava/lang/Exception;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PreferenceSetings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to aquire local preference version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    const/4 v2, -0x1

    .restart local v2       #version:I
    goto :goto_0

    .line 407
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 409
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-ne v2, v6, :cond_3

    .line 410
    invoke-static {p0, v0}, Lcom/motorola/camera/PreferenceSettings;->upgradeGlobalPreferencesFromOldCamera(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)I

    move-result v2

    .line 412
    :cond_3
    if-nez v2, :cond_4

    .line 414
    const-string v3, "pref_vol_func_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v3, "pref_shutter_tone_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v3, "pref_storage_location_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v3, "pref_record_location_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string v3, "pref_record_location_eula_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    const-string v3, "pref_exposure_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 422
    const-string v3, "pref_instant_on_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    :cond_5
    const-string v3, "pref_version_key"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeGlobalPreferencesFromOldCamera(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)I
    .locals 11
    .parameter "context"
    .parameter "editor"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 491
    const-string v4, "com.motorola.Camera_preferences"

    .line 492
    .local v4, oldCameraPrefFile:Ljava/lang/String;
    invoke-virtual {p0, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 495
    .local v5, prefGlobal:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 496
    .local v0, contents:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 497
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "PreferenceSetings"

    const-string v10, "Old Camera\'s Global preferences not found, set the version to 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0           #contents:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    :goto_0
    return v8

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, ex:Ljava/lang/NullPointerException;
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "PreferenceSetings"

    const-string v10, "Old Camera\'s global preferences not found, set the version to 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    .end local v1           #ex:Ljava/lang/NullPointerException;
    .restart local v0       #contents:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    const-string v9, "isLocationOn"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 506
    .local v2, isLocationOn:Z
    const-string v9, "Shutter Tone"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 507
    .local v3, isShutterToneOn:Z
    const-string v9, "Volume Key Setting"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 508
    .local v7, volkeysetting:I
    const-string v8, "Storage Location"

    const-string v9, "0"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 510
    .local v6, storageLocation:I
    if-ne v2, v10, :cond_2

    .line 511
    const-string v8, "pref_record_location_key"

    const-string v9, "true"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    :cond_2
    if-eq v3, v10, :cond_3

    .line 513
    const-string v8, "pref_shutter_tone_key"

    const-string v9, "false"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    :cond_3
    if-eqz v7, :cond_4

    .line 515
    const-string v8, "pref_vol_func_key"

    const-string v9, "capture"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    :cond_4
    const-string v9, "pref_storage_location_key"

    if-nez v6, :cond_5

    const-string v8, "internal"

    :goto_1
    invoke-interface {p1, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 520
    invoke-static {p0, v4}, Lcom/motorola/camera/PreferenceSettings;->deleteOldCamPrefFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 521
    const/4 v8, 0x2

    goto :goto_0

    .line 517
    :cond_5
    const-string v8, "external"

    goto :goto_1
.end method

.method public static upgradeLocalPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 8
    .parameter "context"
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 362
    :try_start_0
    const-string v3, "pref_local_version"

    const/4 v4, -0x1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 367
    .local v2, version:I
    :goto_0
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PreferenceSetings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preference version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    if-ne v2, v7, :cond_2

    .line 394
    :goto_1
    return-void

    .line 363
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 364
    .local v1, ex:Ljava/lang/Exception;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PreferenceSetings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to aquire local preference version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    const/4 v2, -0x1

    .restart local v2       #version:I
    goto :goto_0

    .line 370
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-ne v2, v6, :cond_3

    .line 372
    invoke-static {p0, v0, p2}, Lcom/motorola/camera/PreferenceSettings;->upgradeLocalPreferencesFromOldCamera(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;I)I

    move-result v2

    .line 374
    :cond_3
    if-nez v2, :cond_4

    .line 376
    const-string v3, "pref_exposure_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v3, "pref_camera_resolution_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v3, "pref_camera_effect_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    const-string v3, "pref_camera_scene_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v3, "pref_camera_mode_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v3, "pref_camera_flash_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v3, "pref_video_resolution_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v3, "pref_video_stabilization_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string v3, "pref_video_effect_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v3, "pref_video_scene_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string v3, "pref_video_mode_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    const-string v3, "pref_video_flash_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 390
    const-string v3, "pref_storage_location_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    :cond_5
    const-string v3, "pref_local_version"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeLocalPreferencesFromOldCamera(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;I)I
    .locals 12
    .parameter "context"
    .parameter "editor"
    .parameter "cameraId"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.motorola.Camera_preferences_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p2, :cond_1

    const-string v8, "back"

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, oldCameraPrefFile:Ljava/lang/String;
    invoke-virtual {p0, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 456
    .local v5, prefLocal:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 457
    .local v0, contents:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 458
    sget-boolean v8, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "PreferenceSetings"

    const-string v10, "Old Camera\'s local preferences not found, set the version to 0"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v8, v9

    .line 487
    .end local v0           #contents:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :goto_1
    return v8

    .line 452
    .end local v4           #oldCameraPrefFile:Ljava/lang/String;
    .end local v5           #prefLocal:Landroid/content/SharedPreferences;
    :cond_1
    const-string v8, "front"

    goto :goto_0

    .line 461
    .restart local v4       #oldCameraPrefFile:Ljava/lang/String;
    .restart local v5       #prefLocal:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    .line 462
    .local v3, ex:Ljava/lang/NullPointerException;
    sget-boolean v8, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "PreferenceSetings"

    const-string v10, "Old Camera\'s local preferences not found, set the version to 0"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v8, v9

    .line 463
    goto :goto_1

    .line 466
    .end local v3           #ex:Ljava/lang/NullPointerException;
    .restart local v0       #contents:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    const-string v8, "mWSResolution"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 467
    .local v7, wideScreenResol:Ljava/lang/String;
    const-string v8, "Video-Stabilization"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 468
    .local v6, videoStablization:Ljava/lang/Boolean;
    const-string v8, "currentVideoResolution"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, currentVideoResolution:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 471
    const-string v8, "currentSingleShotResolution"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, currentSingleShotResolution:Ljava/lang/String;
    const-string v8, "PreferenceSetings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v9, "pref_camera_resolution_key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "true"

    :goto_2
    invoke-interface {p1, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    .end local v1           #currentSingleShotResolution:Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 477
    const-string v8, "pref_video_stabilization_key"

    const-string v9, "true"

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    :cond_5
    if-eqz v2, :cond_7

    .line 480
    const-string v8, "NTSC_D1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    const-string v2, "480p"

    .line 482
    :cond_6
    const-string v8, "pref_video_resolution_key"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    :cond_7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 486
    invoke-static {p0, v4}, Lcom/motorola/camera/PreferenceSettings;->deleteOldCamPrefFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 473
    .restart local v1       #currentSingleShotResolution:Ljava/lang/String;
    :cond_8
    const-string v8, "false"

    goto :goto_2
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 243
    iget-object v1, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/motorola/camera/PreferenceSettings$MyEditor;

    invoke-direct {v0, p0}, Lcom/motorola/camera/PreferenceSettings$MyEditor;-><init>(Lcom/motorola/camera/PreferenceSettings;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 230
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 222
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getGlobal()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 206
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLocal()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 214
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 217
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 198
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, defValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 446
    iget-object v2, p0, Lcom/motorola/camera/PreferenceSettings;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 447
    .local v1, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {v1, p0, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    .end local v1           #listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_0
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method public setLocalDefaultValues(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "numOfCameras"

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, cameraId:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 257
    invoke-static {p1, v0}, Lcom/motorola/camera/PreferenceSettings;->getPrefName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, prefName:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 260
    .local v2, prefLocal:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 261
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 262
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_camera_effect_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    const-string v4, "pref_video_effect_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string v4, "pref_camera_scene_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v4, "pref_video_scene_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v4, "pref_camera_mode_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v4, "pref_video_mode_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    const-string v4, "pref_camera_flash_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    const-string v4, "pref_video_flash_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v2           #prefLocal:Landroid/content/SharedPreferences;
    .end local v3           #prefName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setLocalId(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "cameraId"

    .prologue
    .line 116
    invoke-static {p1, p2}, Lcom/motorola/camera/PreferenceSettings;->getPrefName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, prefName:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 120
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 121
    iget-object v1, p0, Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 122
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method
