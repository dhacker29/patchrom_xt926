.class public final Lcom/motorola/camera/AppSettings;
.super Ljava/lang/Object;
.source "AppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;,
        Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCameraSettings"

.field private static mDisplayRotation:I

.field private static mDisplaySize:Landroid/graphics/Point;

.field private static mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field private static mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

.field private static sAppSettings:Lcom/motorola/camera/AppSettings;

.field protected static sOnPreferenceChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraID:I

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

.field private mEffectsAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExternalMemory:J

.field private mIntent:Landroid/content/Intent;

.field private mInternalMemory:J

.field private mLocation:Landroid/location/Location;

.field private mLocationAddress:Ljava/lang/String;

.field private mLocationStatus:I

.field private mLowBattery:Z

.field private mNumOfCameras:I

.field private mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

.field private mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

.field private mPreviewSizeChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileSettings:Lcom/motorola/camera/ProfileSettings;

.field private mRawSize:Landroid/graphics/Point;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    .line 67
    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/AppSettings;->mLowBattery:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mEffectsAdapter:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 90
    iput-wide v1, p0, Lcom/motorola/camera/AppSettings;->mInternalMemory:J

    .line 91
    iput-wide v1, p0, Lcom/motorola/camera/AppSettings;->mExternalMemory:J

    .line 124
    new-instance v0, Lcom/motorola/camera/ProfileSettings;

    invoke-direct {v0}, Lcom/motorola/camera/ProfileSettings;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    .line 125
    new-instance v0, Lcom/motorola/camera/PreferenceSettings;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreferenceSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    .line 126
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/PreferenceSettings;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/PreferenceSettings;->upgradeGlobalPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 127
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/AppSettings;->initializePanoramaManager(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->setSingleshotMode()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/AppSettings;)Lcom/motorola/camera/PreferenceSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    return-object v0
.end method

.method static synthetic access$100()Lcom/motorola/camera/PreferenceGroup;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    return-object v0
.end method

.method private filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/PreferenceGroup;",
            "Lcom/motorola/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Lcom/motorola/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 1226
    invoke-virtual {p2}, Lcom/motorola/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1229
    :cond_0
    return-void
.end method

.method private getDefaultStorageOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1499
    sget-object v0, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->DEFAULT_STORAGE_LOC:Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/DeviceProperties;->getString(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/motorola/camera/AppSettings;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/motorola/camera/AppSettings;->sAppSettings:Lcom/motorola/camera/AppSettings;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/motorola/camera/AppSettings;

    invoke-direct {v0}, Lcom/motorola/camera/AppSettings;-><init>()V

    sput-object v0, Lcom/motorola/camera/AppSettings;->sAppSettings:Lcom/motorola/camera/AppSettings;

    .line 152
    :cond_0
    sget-object v0, Lcom/motorola/camera/AppSettings;->sAppSettings:Lcom/motorola/camera/AppSettings;

    return-object v0
.end method

.method private getPreferenceGroup(I)Lcom/motorola/camera/PreferenceGroup;
    .locals 4
    .parameter "preferenceRes"

    .prologue
    .line 965
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->PREFERENCE_INFLATE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 966
    :cond_0
    new-instance v1, Lcom/motorola/camera/PreferenceInflater;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 968
    .local v1, inflater:Lcom/motorola/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/motorola/camera/PreferenceInflater;->inflate(I)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/PreferenceGroup;

    .line 970
    .local v0, group:Lcom/motorola/camera/PreferenceGroup;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->PREFERENCE_INFLATE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 971
    :cond_1
    invoke-direct {p0, v0}, Lcom/motorola/camera/AppSettings;->initPreference(Lcom/motorola/camera/PreferenceGroup;)V

    .line 972
    return-object v0
.end method

.method private getSetAndForgetKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v0, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/DeviceSettings;->getSupportedPictureRes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 631
    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_0
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SLOW_MOTION:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 634
    const-string v1, "pref_video_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_1
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->isMotoCastAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    const-string v1, "pref_motocast_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_2
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->isVolumeSettingSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 640
    const-string v1, "pref_vol_func_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->isInstantOnSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 643
    const-string v1, "pref_instant_on_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_4
    const-string v1, "pref_record_location_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/DeviceSettings;->isVStabSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 647
    const-string v1, "pref_video_stabilization_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_5
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/saving/SaveHelper;->getSupportedStorageDirectories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 651
    const-string v1, "pref_storage_location_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->isShutterToneForced()Z

    move-result v1

    if-nez v1, :cond_7

    .line 654
    const-string v1, "pref_shutter_tone_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/PreferenceSettings;->get(Landroid/content/Context;)Lcom/motorola/camera/PreferenceSettings;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedAudioChannels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/motorola/camera/AppSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "motoVideoRecAudioSceneSupported"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, params:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1169
    const-string v2, "Off"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    const-string v2, ","

    invoke-static {v0, v2}, Lcom/motorola/camera/Util;->stringToArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1173
    :cond_0
    return-object v1
.end method

.method private getSupportedVideoSizes(Lcom/motorola/camera/ListPreference;)Ljava/util/List;
    .locals 10
    .parameter "vidRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ListPreference;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .local v7, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 1466
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1467
    .local v6, resolution:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/motorola/camera/ProfileSettings;->getProfile(Ljava/lang/String;Z)I

    move-result v5

    .line 1468
    .local v5, profileVal:I
    iget v8, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    invoke-static {v8, v5}, Lcom/motorola/camera/ProfileSettings;->hasProfile(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1469
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1474
    .end local v5           #profileVal:I
    .end local v6           #resolution:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    iget v9, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    invoke-virtual {v8, v9, v7}, Lcom/motorola/camera/ProfileSettings;->getSizeList(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1477
    .local v1, entryDimensions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v8, v7, v1}, Lcom/motorola/camera/DeviceSettings;->filterVideoSizes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1480
    const-string v8, "640x480"

    invoke-interface {v1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const-string v9, "480p"

    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 1481
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1483
    .local v2, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1485
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v8, "480p"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1486
    .local v4, index:I
    if-ltz v4, :cond_2

    .line 1487
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v8

    const v9, 0x7f0b0056

    invoke-virtual {v8, v9}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1488
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1491
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2           #entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4           #index:I
    :cond_2
    return-object v7
.end method

.method private initPreference(Lcom/motorola/camera/PreferenceGroup;)V
    .locals 29
    .parameter "group"

    .prologue
    .line 995
    sget-boolean v26, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v26, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v26

    sget-object v27, Lcom/motorola/camera/CameraKpi$KPI;->INIT_PREFERENCE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual/range {v26 .. v27}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 997
    :cond_0
    const-string v26, "pref_storage_location_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ListPreference;

    .line 999
    .local v8, cameraStorage:Lcom/motorola/camera/ListPreference;
    if-eqz v8, :cond_3

    .line 1000
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/AppSettings;->getDefaultStorageOption()Ljava/lang/String;

    move-result-object v15

    .line 1001
    .local v15, storagePref:Ljava/lang/String;
    sget-boolean v26, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v26, :cond_1

    const-string v26, "MotoCameraSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "storagePref:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_1
    if-eqz v15, :cond_2

    const-string v26, "external"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1003
    const-string v26, "external"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1005
    :cond_2
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/saving/SaveHelper;->getSupportedStorageDirectories()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v8, v2}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1007
    invoke-virtual {v8}, Lcom/motorola/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/motorola/camera/AppSettings;->resetIfInvalid(Lcom/motorola/camera/ListPreference;)V

    .line 1010
    .end local v15           #storagePref:Ljava/lang/String;
    :cond_3
    const-string v26, "pref_shutter_tone_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/CheckboxPreference;

    .line 1013
    .local v14, shutterTone:Lcom/motorola/camera/CheckboxPreference;
    const-string v26, "pref_camera_resolution_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/CheckboxPreference;

    .line 1016
    .local v12, picRes:Lcom/motorola/camera/CheckboxPreference;
    const-string v26, "pref_exposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/SliderPreference;

    .line 1018
    .local v10, exposure:Lcom/motorola/camera/SliderPreference;
    const-string v26, "pref_vol_func_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v23

    check-cast v23, Lcom/motorola/camera/ListPreference;

    .line 1021
    .local v23, volumeSetting:Lcom/motorola/camera/ListPreference;
    if-eqz v10, :cond_4

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getMaxExposureCompensation()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/motorola/camera/SliderPreference;->setMax(F)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getMinExposureCompensation()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/motorola/camera/SliderPreference;->setMin(F)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getExposureCompensationStep()F

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/motorola/camera/SliderPreference;->setScaleValue(F)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getExposureCompensationStep()F

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/motorola/camera/SliderPreference;->setStep(F)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getExposureCompensation()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/motorola/camera/SliderPreference;->setCurrentValue(F)V

    .line 1030
    :cond_4
    sget-object v26, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 1031
    const-string v26, "pref_camera_effect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/IconListPreference;

    .line 1033
    .local v4, cameraEffect:Lcom/motorola/camera/IconListPreference;
    const-string v26, "pref_camera_scene_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/IconListPreference;

    .line 1035
    .local v7, cameraScene:Lcom/motorola/camera/IconListPreference;
    const-string v26, "pref_camera_mode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/IconListPreference;

    .line 1037
    .local v6, cameraMode:Lcom/motorola/camera/IconListPreference;
    const-string v26, "pref_camera_flash_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/IconListPreference;

    .line 1044
    .local v5, cameraFlash:Lcom/motorola/camera/IconListPreference;
    if-eqz v4, :cond_5

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v4, v2}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1047
    invoke-virtual {v4}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 1048
    .local v9, effect:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/motorola/camera/DeviceSettings;->setColorEffect(Ljava/lang/String;)V

    .line 1052
    .end local v9           #effect:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v7, v2}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1055
    invoke-virtual {v7}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1056
    .local v13, scene:Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/motorola/camera/DeviceSettings;->setSceneMode(Ljava/lang/String;)V

    .line 1060
    .end local v13           #scene:Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/motorola/camera/DeviceSettings;->getSupportedCaptureModes(II)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1064
    :cond_7
    if-eqz v5, :cond_8

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v5, v2}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1067
    invoke-virtual {v5}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 1068
    .local v11, flash:Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/motorola/camera/DeviceSettings;->setFlashMode(Ljava/lang/String;)V

    .line 1128
    .end local v4           #cameraEffect:Lcom/motorola/camera/IconListPreference;
    .end local v5           #cameraFlash:Lcom/motorola/camera/IconListPreference;
    .end local v6           #cameraMode:Lcom/motorola/camera/IconListPreference;
    .end local v7           #cameraScene:Lcom/motorola/camera/IconListPreference;
    .end local v11           #flash:Ljava/lang/String;
    :cond_8
    :goto_0
    if-eqz v12, :cond_9

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getSupportedPictureRes()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v12, v2}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1130
    invoke-virtual {v12}, Lcom/motorola/camera/CheckboxPreference;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 1131
    .local v16, val:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/camera/DeviceSettings;->setPictureSize(Z)V

    .line 1132
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/motorola/camera/AppSettings;->setPicResSummary(Lcom/motorola/camera/CameraPreference;Z)V

    .line 1135
    .end local v16           #val:Z
    :cond_9
    sget-boolean v26, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v26, :cond_a

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v26

    sget-object v27, Lcom/motorola/camera/CameraKpi$KPI;->INIT_PREFERENCE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual/range {v26 .. v27}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 1136
    :cond_a
    return-void

    .line 1074
    :cond_b
    const-string v26, "pref_video_resolution_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v17

    check-cast v17, Lcom/motorola/camera/ListPreference;

    .line 1076
    .local v17, vidRes:Lcom/motorola/camera/ListPreference;
    const-string v26, "pref_video_effect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v18

    check-cast v18, Lcom/motorola/camera/IconListPreference;

    .line 1078
    .local v18, videoEffect:Lcom/motorola/camera/IconListPreference;
    const-string v26, "pref_video_scene_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v21

    check-cast v21, Lcom/motorola/camera/IconListPreference;

    .line 1080
    .local v21, videoScene:Lcom/motorola/camera/IconListPreference;
    const-string v26, "pref_video_mode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v20

    check-cast v20, Lcom/motorola/camera/IconListPreference;

    .line 1082
    .local v20, videoMode:Lcom/motorola/camera/IconListPreference;
    const-string v26, "pref_video_flash_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v19

    check-cast v19, Lcom/motorola/camera/IconListPreference;

    .line 1084
    .local v19, videoFlash:Lcom/motorola/camera/IconListPreference;
    const-string v26, "pref_video_stabilization_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v22

    check-cast v22, Lcom/motorola/camera/CheckboxPreference;

    .line 1091
    .local v22, videoStabilization:Lcom/motorola/camera/CheckboxPreference;
    if-eqz v18, :cond_c

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1094
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 1095
    .restart local v9       #effect:Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/motorola/camera/DeviceSettings;->setColorEffect(Ljava/lang/String;)V

    .line 1099
    .end local v9           #effect:Ljava/lang/String;
    :cond_c
    if-eqz v21, :cond_d

    .line 1100
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/AppSettings;->getSupportedAudioChannels()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1102
    :cond_d
    if-eqz v20, :cond_e

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/motorola/camera/DeviceSettings;->getSupportedCaptureModes(II)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1106
    :cond_e
    if-eqz v19, :cond_f

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1109
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 1110
    .restart local v11       #flash:Ljava/lang/String;
    if-eqz v11, :cond_f

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/motorola/camera/DeviceSettings;->setFlashMode(Ljava/lang/String;)V

    .line 1114
    .end local v11           #flash:Ljava/lang/String;
    :cond_f
    if-eqz v22, :cond_10

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/DeviceSettings;->getSupportedVStab()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    .line 1117
    invoke-virtual/range {v22 .. v22}, Lcom/motorola/camera/CheckboxPreference;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 1118
    .local v24, vstab:Ljava/lang/String;
    if-eqz v24, :cond_10

    .line 1119
    const-string v26, "true"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    const/16 v25, 0x1

    .line 1120
    .local v25, vstabToggle:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/camera/DeviceSettings;->setVStab(Z)V

    .line 1123
    .end local v24           #vstab:Ljava/lang/String;
    .end local v25           #vstabToggle:Z
    :cond_10
    if-eqz v17, :cond_8

    .line 1124
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/camera/AppSettings;->getSupportedVideoSizes(Lcom/motorola/camera/ListPreference;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/AppSettings;->filterUnsupportedOptions(Lcom/motorola/camera/PreferenceGroup;Lcom/motorola/camera/ListPreference;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1119
    .restart local v24       #vstab:Ljava/lang/String;
    :cond_11
    const/16 v25, 0x0

    goto :goto_1
.end method

.method private initializePanoramaManager(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 749
    new-instance v0, Lcom/motorola/camera/PanoramaManager;

    invoke-direct {v0}, Lcom/motorola/camera/PanoramaManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    .line 750
    return-void
.end method

.method public static isModeSwitch(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 393
    const-string v0, "pref_camera_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMotoCastAvailable()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method private isPresent(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)Z
    .locals 4
    .parameter "passedListener"

    .prologue
    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, result:Z
    sget-object v3, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;

    .line 556
    .local v1, listener:Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;
    if-ne v1, p1, :cond_0

    .line 557
    const/4 v2, 0x1

    .line 561
    .end local v1           #listener:Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;
    :cond_1
    return v2
.end method

.method private isPresent(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)Z
    .locals 4
    .parameter "passedListener"

    .prologue
    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, result:Z
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;

    .line 569
    .local v1, listener:Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;
    if-ne v1, p1, :cond_0

    .line 570
    const/4 v2, 0x1

    .line 575
    .end local v1           #listener:Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;
    :cond_1
    return v2
.end method

.method public static isRestartRequired(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 400
    const-string v0, "pref_camera_resolution_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_resolution_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVolumeSettingSupported()Z
    .locals 6

    .prologue
    .line 610
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    .line 611
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x1

    .line 613
    .local v2, volumeConfig:Z
    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 617
    :cond_0
    :goto_0
    return v2

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource not found: R.bool.feature_volume_setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readIntentValues(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, q:I
    if-nez v0, :cond_1

    .line 300
    new-instance v1, Lcom/motorola/camera/ProfileSettings;

    iget v2, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    const/16 v3, 0x65

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ProfileSettings;-><init>(II)V

    iput-object v1, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    .line 302
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quality set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v3}, Lcom/motorola/camera/ProfileSettings;->getResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quality set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v3}, Lcom/motorola/camera/ProfileSettings;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0           #q:I
    :cond_1
    return-void
.end method

.method private static removePreference(Lcom/motorola/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 7
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 1254
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removing unsupported preference: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/motorola/camera/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1256
    invoke-virtual {p0, v1}, Lcom/motorola/camera/PreferenceGroup;->get(I)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    .line 1257
    .local v0, child:Lcom/motorola/camera/CameraPreference;
    instance-of v3, v0, Lcom/motorola/camera/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 1258
    check-cast v3, Lcom/motorola/camera/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/motorola/camera/AppSettings;->removePreference(Lcom/motorola/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1268
    .end local v0           #child:Lcom/motorola/camera/CameraPreference;
    :goto_1
    return v3

    .line 1262
    .restart local v0       #child:Lcom/motorola/camera/CameraPreference;
    :cond_1
    instance-of v3, v0, Lcom/motorola/camera/ListPreference;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .end local v0           #child:Lcom/motorola/camera/CameraPreference;
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1264
    invoke-virtual {p0, v1}, Lcom/motorola/camera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 1265
    goto :goto_1

    .line 1255
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1268
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private resetIfInvalid(Lcom/motorola/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 1239
    invoke-virtual {p1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1241
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ListPreference;->setValueIndex(I)V

    .line 1243
    :cond_0
    return-void
.end method

.method private resetParamters()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1376
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/DeviceSettings;->setBurstMode(I)V

    .line 1377
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/DeviceSettings;->setHDR(Z)V

    .line 1378
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/DeviceSettings;->setZSL(Z)V

    .line 1379
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/DeviceSettings;->setVideoHighFrameRate(Z)V

    .line 1380
    return-void
.end method

.method private setModeParameters()V
    .locals 2

    .prologue
    .line 1351
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraSettings"

    const-string v1, "setting mode parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->resetParamters()V

    .line 1353
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1354
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->setVideoDeviceParameters()V

    .line 1359
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->setEnvironmentalCallbacks()V

    .line 1360
    return-void

    .line 1356
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->setStillParameters()V

    goto :goto_0
.end method

.method private setPicResSummary(Lcom/motorola/camera/CameraPreference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1139
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    .line 1140
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 1141
    .local v1, summaryText:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1142
    const v2, 0x7f0b004b

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v4}, Lcom/motorola/camera/DeviceSettings;->getMaxWideScreenRes()Landroid/hardware/Camera$Size;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/Util;->getIntRes(Landroid/hardware/Camera$Size;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    :goto_0
    invoke-virtual {p1, v1}, Lcom/motorola/camera/CameraPreference;->setSummary(Ljava/lang/String;)V

    .line 1151
    return-void

    .line 1146
    :cond_0
    const v2, 0x7f0b004c

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v4}, Lcom/motorola/camera/DeviceSettings;->getMaxNonWideScreenRes()Landroid/hardware/Camera$Size;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/Util;->getIntRes(Landroid/hardware/Camera$Size;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setStillParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1383
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->MULTISHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v1, v2, :cond_1

    .line 1385
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/DeviceSettings;->setPictureSize(Z)V

    .line 1386
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    iget-object v2, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v2}, Lcom/motorola/camera/DeviceSettings;->getMaxBurstModeSupported()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/DeviceSettings;->setBurstMode(I)V

    .line 1393
    :goto_0
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v1, v2, :cond_3

    .line 1394
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/DeviceSettings;->setPanoramaModeParameters()V

    .line 1398
    :goto_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1399
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/DeviceSettings;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1400
    .local v0, size:Landroid/hardware/Camera$Size;
    const-string v1, "MotoCameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-string v1, "MotoCameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-void

    .line 1387
    :cond_1
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->HDR:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v1, v2, :cond_2

    .line 1388
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/DeviceSettings;->setHDR(Z)V

    goto :goto_0

    .line 1390
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/DeviceSettings;->setZSL(Z)V

    goto :goto_0

    .line 1396
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/DeviceSettings;->setStillModeParameters()V

    goto :goto_1
.end method

.method private showRecordLocationEula()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1416
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    .line 1417
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    const-string v4, "pref_record_location_eula_key"

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/PreferenceSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1419
    new-instance v1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;-><init>()V

    .line 1420
    .local v1, popupData:Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    const v2, 0x7f0b007c

    iput v2, v1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->message:I

    .line 1421
    const v2, 0x7f0b007b

    iput v2, v1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->title:I

    .line 1422
    const v2, 0x7f0b0076

    new-instance v3, Lcom/motorola/camera/AppSettings$1;

    invoke-direct {v3, p0}, Lcom/motorola/camera/AppSettings$1;-><init>(Lcom/motorola/camera/AppSettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 1441
    const v2, 0x7f0b0077

    new-instance v3, Lcom/motorola/camera/AppSettings$2;

    invoke-direct {v3, p0}, Lcom/motorola/camera/AppSettings$2;-><init>(Lcom/motorola/camera/AppSettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->setNegativeButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 1451
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 1452
    const/4 v2, 0x1

    .line 1458
    .end local v1           #popupData:Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    :cond_0
    :goto_0
    return v2

    .line 1453
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->isLocationProviderEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1455
    invoke-static {}, Lcom/motorola/camera/Util;->launchSettingsPopup()Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;

    move-result-object v1

    .line 1456
    .restart local v1       #popupData:Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v3, v4, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateModePreference()V
    .locals 4

    .prologue
    .line 200
    sget-object v2, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v1, 0x0

    .line 203
    .local v1, preference:Lcom/motorola/camera/ListPreference;
    sget-object v2, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    sget-object v2, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_camera_mode_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 211
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    :goto_1
    if-eqz v1, :cond_0

    .line 212
    sget-object v2, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 215
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 207
    .end local v0           #index:I
    :cond_2
    sget-object v2, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_video_mode_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    goto :goto_1
.end method

.method private updateProfile()V
    .locals 6

    .prologue
    .line 475
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_video_resolution_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 478
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 481
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SLOW_MOTION:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v1, v2, :cond_2

    .line 482
    new-instance v1, Lcom/motorola/camera/ProfileSettings;

    iget v2, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ProfileSettings;-><init>(II)V

    iput-object v1, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    goto :goto_0

    .line 484
    :cond_2
    new-instance v2, Lcom/motorola/camera/ProfileSettings;

    iget v3, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v5, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v1, v5, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v4, v1}, Lcom/motorola/camera/ProfileSettings;->getProfile(Ljava/lang/String;Z)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/ProfileSettings;-><init>(II)V

    iput-object v2, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateStorageSummary()V
    .locals 3

    .prologue
    .line 820
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_storage_location_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 824
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->getCurrentSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveHelper;->getSpaceAsFormattedString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 532
    sget-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    .line 535
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/camera/AppSettings;->isPresent(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    sget-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    .line 141
    :cond_0
    return-void
.end method

.method protected dispatchOnPreferenceChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 596
    sget-object v2, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 603
    :cond_0
    return-void

    .line 599
    :cond_1
    sget-object v2, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 601
    sget-object v2, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;

    invoke-interface {v2, p1}, Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;->onPreferenceChanged(Ljava/lang/String;)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected dispatchOnPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 582
    sget-object v3, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 590
    :cond_0
    return-void

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->getSetAndForgetKeys()[Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, keys:[Ljava/lang/String;
    sget-object v3, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 587
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 588
    sget-object v3, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;

    invoke-interface {v3, p1, v2}, Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;->onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAutoTimerSetting()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 503
    sget-object v2, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    sget-object v2, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_camera_mode_timer_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 507
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getBurstCount()I
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getBurstCount()I

    move-result v0

    return v0
.end method

.method public getCameraFacing()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    return v0
.end method

.method public getChannelsForAudioScene()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1182
    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v4, "pref_video_scene_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 1184
    .local v0, audioScene:Lcom/motorola/camera/ListPreference;
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Channels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, params:Ljava/lang/String;
    const-string v3, ","

    invoke-static {v2, v3}, Lcom/motorola/camera/Util;->stringToArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1188
    .local v1, channels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 1189
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1191
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public getCorrectedOrientation(I)I
    .locals 2
    .parameter "phoneOrientation"

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(III)I

    move-result v0

    return v0
.end method

.method public getCurrentSpace()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 830
    sget-object v4, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v4, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-wide v2

    .line 831
    :cond_1
    sget-object v4, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v5, "pref_storage_location_key"

    invoke-virtual {v4, v5}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 833
    .local v1, preference:Lcom/motorola/camera/ListPreference;
    if-nez v1, :cond_2

    .line 834
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCameraSettings"

    const-string v5, "getCurrentSpace() preference null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 837
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, prefValue:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "external"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 839
    iget-wide v2, p0, Lcom/motorola/camera/AppSettings;->mExternalMemory:J

    goto :goto_0

    .line 842
    :cond_3
    if-eqz v0, :cond_0

    const-string v4, "internal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 843
    iget-wide v2, p0, Lcom/motorola/camera/AppSettings;->mInternalMemory:J

    goto :goto_0
.end method

.method public getCurrentVideoResSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentfps()I
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getFPS()I

    move-result v0

    return v0
.end method

.method public getDeviceParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getDisplaySize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/motorola/camera/AppSettings;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFocusDistances([F)V
    .locals 1
    .parameter "output"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getFocusDistances([F)V

    .line 1331
    return-void
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    :cond_0
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mLocationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationStatus()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/motorola/camera/AppSettings;->mLocationStatus:I

    return v0
.end method

.method public getMaxNumDetectedFaces()I
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getMaxNumDetectedFaces()I

    move-result v0

    return v0
.end method

.method public getMaxNumFocusAreas()I
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getMaxNumFocusAreas()I

    move-result v0

    return v0
.end method

.method public getMaxNumMeteringAreas()I
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getMaxNumMeteringAreas()I

    move-result v0

    return v0
.end method

.method public getMediaRecorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getMimeTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public getModeClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/motorola/camera/modes/AbstractMode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    sget-object v2, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-static {v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->getClassName(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    .local v1, mode:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/motorola/camera/modes/AbstractMode;>;"
    return-object v1

    .line 230
    .end local v1           #mode:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/motorola/camera/modes/AbstractMode;>;"
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/ClassNotFoundException;
    throw v0
.end method

.method public getModefromIndex(I)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 3
    .parameter "index"

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, mode:Ljava/lang/String;
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_camera_mode_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    return-object v1

    .line 416
    :cond_0
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_video_mode_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumOfCameras()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/motorola/camera/AppSettings;->mNumOfCameras:I

    return v0
.end method

.method public getPanoramaManager()Lcom/motorola/camera/PanoramaManager;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    return-object v0
.end method

.method public getRawSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mRawSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRecordingDuration()I
    .locals 7

    .prologue
    .line 878
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v3}, Lcom/motorola/camera/ProfileSettings;->getVideoBitrate()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v4}, Lcom/motorola/camera/ProfileSettings;->getAudioBitrate()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v0, v3, 0x3

    .line 879
    .local v0, bitrate:I
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->getVideoFilesize()J

    move-result-wide v3

    int-to-long v5, v0

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    long-to-int v1, v3

    .line 881
    .local v1, duration:I
    sget-object v3, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.durationLimit"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v2, v3, 0x3e8

    .line 883
    .local v2, intentDuration:I
    if-gtz v2, :cond_1

    .line 887
    .end local v1           #duration:I
    .end local v2           #intentDuration:I
    :cond_0
    :goto_0
    return v1

    .line 885
    .restart local v1       #duration:I
    .restart local v2       #intentDuration:I
    :cond_1
    if-ge v2, v1, :cond_2

    .end local v2           #intentDuration:I
    :goto_1
    move v1, v2

    goto :goto_0

    .restart local v2       #intentDuration:I
    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 1272
    sget v0, Lcom/motorola/camera/AppSettings;->mDisplayRotation:I

    return v0
.end method

.method public getStorageDevice()Ljava/lang/String;
    .locals 4

    .prologue
    .line 776
    sget-object v2, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 784
    :cond_0
    :goto_0
    return-object v1

    .line 778
    :cond_1
    const/4 v1, 0x0

    .line 779
    .local v1, storageDevice:Ljava/lang/String;
    sget-object v2, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_storage_location_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 781
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeBetweenTimeLapseCaptureMS()J
    .locals 5

    .prologue
    const-wide/16 v1, -0x1

    .line 494
    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v3, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-wide v1

    .line 496
    :cond_1
    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v4, "pref_video_mode_timelapse_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 498
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getVideoBitrate()I

    move-result v0

    return v0
.end method

.method public getVideoFilesize()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 899
    .local v0, maxSize:J
    sget-object v2, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 902
    .end local v0           #maxSize:J
    :goto_0
    return-wide v0

    .restart local v0       #maxSize:J
    :cond_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/saving/SaveHelper;->getMaxVideoFileSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getVideoFrameRate()I
    .locals 3

    .prologue
    .line 1522
    const/4 v0, -0x1

    .line 1524
    .local v0, frameRate:I
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SLOW_MOTION:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/DeviceSettings;->getFrameRate()I

    move-result v0

    .line 1527
    :cond_0
    return v0
.end method

.method public getVideoOutFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getOutFormatFileExt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getResolutionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ProfileSettings;->getResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLowBattery()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/motorola/camera/AppSettings;->mLowBattery:Z

    return v0
.end method

.method public hasPreviewSizeChanged()Z
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->hasPreviewSizeChanged()Z

    move-result v0

    .line 408
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->hasVideoProfileChange()Z

    move-result v0

    goto :goto_0
.end method

.method public initCameraComplete()V
    .locals 1

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->updateStorageSummary()V

    .line 950
    sget-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;)V

    .line 951
    return-void
.end method

.method public initDeviceParameter(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .parameter "parameters"
    .parameter "cameraId"

    .prologue
    .line 355
    if-eqz p1, :cond_1

    .line 357
    new-instance v0, Lcom/motorola/camera/DeviceSettings;

    invoke-direct {v0}, Lcom/motorola/camera/DeviceSettings;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    .line 358
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/DeviceSettings;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 360
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setup preferences for device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iput p2, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    .line 362
    iget v0, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 363
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/PreferenceSettings;->setLocalId(Landroid/content/Context;I)V

    .line 364
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/PreferenceSettings;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/motorola/camera/PreferenceSettings;->upgradeLocalPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    .line 371
    :cond_1
    return-void
.end method

.method public isAtomicSetting(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public isEncryptionEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 892
    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->MMC_ENCRYPTION:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    invoke-static {v1}, Lcom/motorola/camera/DeviceProperties;->getInt(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnvironmentalSupported()Z
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->isEnvironmentalSupported()Z

    move-result v0

    return v0
.end method

.method public isInstantOnSupported()Z
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    const-string v1, "pref_instant_on_available_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/PreferenceSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLocationEnabled()Z
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->isLocationPreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->isLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationPreferenceEnabled()Z
    .locals 3

    .prologue
    .line 732
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 736
    :goto_0
    return v1

    .line 734
    :cond_0
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_record_location_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 736
    .local v0, geotag:Lcom/motorola/camera/ListPreference;
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLocationProviderEnabled()Z
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/motorola/camera/LocationManager;->isLocationProviderEnabled()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public isShutterToneEnabled()Z
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->isShutterToneForced()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v1, "pref_shutter_tone_key"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isShutterToneForced()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1495
    sget-object v1, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;

    invoke-static {v1}, Lcom/motorola/camera/DeviceProperties;->getInt(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeLapseMode()Z
    .locals 2

    .prologue
    .line 490
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoSnapshotSupported()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->isVideoSnapshotSupported()Z

    move-result v0

    return v0
.end method

.method public isVolumeKeyZoom()Z
    .locals 2

    .prologue
    .line 673
    sget-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 675
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v1, "pref_vol_func_key"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public muteMicrophone(Z)V
    .locals 1
    .parameter "mute"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 763
    return-void
.end method

.method public onSaveComplete()V
    .locals 2

    .prologue
    .line 804
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraSettings"

    const-string v1, "onSaveComplete: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->updateStorageSummary()V

    .line 806
    return-void
.end method

.method public parametersUpdate()V
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->getPreferenceResource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/AppSettings;->getPreferenceGroup(I)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 375
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->updateModePreference()V

    .line 376
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->updateProfile()V

    .line 377
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->setModeParameters()V

    .line 378
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->getPreferenceResource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/AppSettings;->getPreferenceGroup(I)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 379
    return-void
.end method

.method public previewUpdated()V
    .locals 0

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->updatePreviewSize()V

    .line 955
    return-void
.end method

.method public registerPreviewSizeChangeListener(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    .line 1300
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/camera/AppSettings;->isPresent(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    :cond_1
    return-void
.end method

.method public reloadPreferenceGroup()V
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->getPreferenceResource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/AppSettings;->getPreferenceGroup(I)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 853
    sget-object v0, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;)V

    .line 854
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->updateStorageSummary()V

    .line 855
    return-void
.end method

.method public removeOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 546
    sget-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/motorola/camera/AppSettings;->sOnPreferenceChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    return-void
.end method

.method public setAudioManagerSceneMode()V
    .locals 4

    .prologue
    .line 1207
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_video_scene_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 1209
    .local v0, audioScene:Lcom/motorola/camera/ListPreference;
    iget-object v1, p0, Lcom/motorola/camera/AppSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motoVideoRecAudioSceneConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method public setCamcorderMode()V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_VIDEO:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    goto :goto_0
.end method

.method public setDefaultValues(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;

    iget v1, p0, Lcom/motorola/camera/AppSettings;->mNumOfCameras:I

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/PreferenceSettings;->setLocalDefaultValues(Landroid/content/Context;I)V

    .line 985
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->setSingleshotMode()V

    .line 986
    return-void
.end method

.method public setDeviceParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/DeviceSettings;->setParameter(Landroid/hardware/Camera$Parameters;)V

    .line 930
    if-eqz p1, :cond_0

    .line 931
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ZoomManager;->onParametersChanged(Landroid/hardware/Camera$Parameters;)V

    .line 933
    :cond_0
    return-void
.end method

.method public setExifInfo(Landroid/location/Location;I)V
    .locals 1
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 698
    if-eqz p1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/DeviceSettings;->setLocation(Landroid/location/Location;)V

    .line 703
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/DeviceSettings;->setRotation(I)V

    .line 704
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->removeLocation()V

    goto :goto_0
.end method

.method public setFocusAreas(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1334
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1335
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public setIntentValues(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/motorola/camera/AppSettings;->mIntent:Landroid/content/Intent;

    .line 266
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_PICTURE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_VIDEO:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    goto :goto_0

    .line 272
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    goto :goto_0

    .line 274
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    goto :goto_0

    .line 277
    :cond_4
    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    goto :goto_0
.end method

.method public setLocationAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mLocationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    iput-object p1, p0, Lcom/motorola/camera/AppSettings;->mLocationAddress:Ljava/lang/String;

    .line 1517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceChanged(Ljava/lang/String;)V

    .line 1519
    :cond_0
    return-void
.end method

.method public setLocationCoordinates(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/motorola/camera/AppSettings;->mLocation:Landroid/location/Location;

    .line 1512
    return-void
.end method

.method public setLocationStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 1504
    iget v0, p0, Lcom/motorola/camera/AppSettings;->mLocationStatus:I

    if-eq p1, v0, :cond_0

    .line 1505
    iput p1, p0, Lcom/motorola/camera/AppSettings;->mLocationStatus:I

    .line 1506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceChanged(Ljava/lang/String;)V

    .line 1508
    :cond_0
    return-void
.end method

.method public setLowBattery(Z)V
    .locals 0
    .parameter "low"

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/motorola/camera/AppSettings;->mLowBattery:Z

    .line 524
    return-void
.end method

.method public setMeteringAreas(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1339
    return-void
.end method

.method public setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 190
    sput-object p1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 191
    return-void
.end method

.method public setNumOfCameras(I)V
    .locals 0
    .parameter "numOfCameras"

    .prologue
    .line 318
    iput p1, p0, Lcom/motorola/camera/AppSettings;->mNumOfCameras:I

    .line 319
    return-void
.end method

.method public setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 1
    .parameter "rawSize"
    .parameter "screenSize"
    .parameter "rotation"

    .prologue
    .line 156
    sput p3, Lcom/motorola/camera/AppSettings;->mDisplayRotation:I

    .line 157
    sput-object p2, Lcom/motorola/camera/AppSettings;->mDisplaySize:Landroid/graphics/Point;

    .line 158
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Lcom/motorola/camera/AppSettings;->mDisplaySize:Landroid/graphics/Point;

    .end local p1
    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/AppSettings;->mRawSize:Landroid/graphics/Point;

    .line 159
    return-void
.end method

.method public setSetting(Ljava/lang/String;F)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 512
    const-string v0, "pref_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/DeviceSettings;->setExposureCompensation(I)V

    .line 515
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setSetting(Ljava/lang/String;I)Z
    .locals 10
    .parameter "key"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 429
    const-string v3, "pref_camera_effect_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pref_video_effect_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    :cond_0
    iget-object v5, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/DeviceSettings;->setColorEffect(Ljava/lang/String;)V

    .line 469
    :cond_1
    :goto_0
    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->setValueIndex(I)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceChanged(Ljava/lang/String;)V

    move v5, v4

    .line 471
    :goto_1
    return v5

    .line 433
    :cond_2
    const-string v3, "pref_camera_scene_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    iget-object v5, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/DeviceSettings;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_3
    const-string v3, "pref_camera_flash_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "pref_video_flash_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 438
    :cond_4
    iget-object v5, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/DeviceSettings;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_5
    const-string v3, "pref_record_location_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 441
    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 442
    .local v0, geotag:Lcom/motorola/camera/ListPreference;
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 444
    .local v1, recordLocation:Z
    if-eqz v1, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->showRecordLocationEula()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    const-string v3, "false"

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 453
    .end local v0           #geotag:Lcom/motorola/camera/ListPreference;
    .end local v1           #recordLocation:Z
    :cond_6
    const-string v3, "pref_storage_location_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 454
    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, storage:Ljava/lang/String;
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->updateStorageSummary()V

    goto/16 :goto_0

    .line 457
    .end local v2           #storage:Ljava/lang/String;
    :cond_7
    const-string v3, "pref_camera_resolution_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 458
    iget-object v5, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/DeviceSettings;->setPictureSize(Z)V

    goto/16 :goto_0

    .line 460
    :cond_8
    const-string v3, "pref_video_resolution_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 461
    new-instance v6, Lcom/motorola/camera/ProfileSettings;

    iget v7, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v9, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v3, v9, :cond_9

    move v3, v4

    :goto_2
    invoke-static {v8, v3}, Lcom/motorola/camera/ProfileSettings;->getProfile(Ljava/lang/String;Z)I

    move-result v3

    invoke-direct {v6, v7, v3}, Lcom/motorola/camera/ProfileSettings;-><init>(II)V

    iput-object v6, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    goto/16 :goto_0

    :cond_9
    move v3, v5

    goto :goto_2

    .line 464
    :cond_a
    const-string v3, "pref_video_stabilization_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    iget-object v5, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    sget-object v3, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ListPreference;->getEntryValueAtIndex(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/DeviceSettings;->setVStab(Z)V

    goto/16 :goto_0
.end method

.method public setSingleshotMode()V
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_PICTURE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    goto :goto_0
.end method

.method public setVideoDeviceParameters()V
    .locals 3

    .prologue
    .line 1284
    sget-object v0, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->setupVideoServiceParameters()V

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/DeviceSettings;->setVideoParameters()V

    .line 1288
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    sget-object v1, Lcom/motorola/camera/AppSettings;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SLOW_MOTION:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/DeviceSettings;->setVideoHighFrameRate(Z)V

    .line 1289
    return-void
.end method

.method public setVideoResolution(I)V
    .locals 2
    .parameter "camcorderProfile"

    .prologue
    .line 1292
    new-instance v0, Lcom/motorola/camera/ProfileSettings;

    iget v1, p0, Lcom/motorola/camera/AppSettings;->mCameraID:I

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/ProfileSettings;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/AppSettings;->mProfileSettings:Lcom/motorola/camera/ProfileSettings;

    .line 1293
    return-void
.end method

.method public setZSL(Z)V
    .locals 1
    .parameter "zsl"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/DeviceSettings;->setZSL(Z)V

    .line 1407
    return-void
.end method

.method public setZoomValue(I)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/DeviceSettings;->setZoomValue(I)V

    .line 925
    return-void
.end method

.method public setupVideoServiceParameters()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/motorola/camera/AppSettings;->readIntentValues(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method public swapStoragePreferences()V
    .locals 3

    .prologue
    .line 790
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraSettings"

    const-string v2, "swapping storage preferences"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    sget-object v1, Lcom/motorola/camera/AppSettings;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_storage_location_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 794
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    invoke-virtual {p0}, Lcom/motorola/camera/AppSettings;->getStorageDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    const-string v1, "external"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 800
    :goto_0
    const-string v1, "pref_storage_location_key"

    invoke-virtual {p0, v1}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceChanged(Ljava/lang/String;)V

    .line 801
    return-void

    .line 797
    :cond_1
    const-string v1, "internal"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterPreviewSizeChangeListener(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1307
    invoke-direct {p0, p1}, Lcom/motorola/camera/AppSettings;->isPresent(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1311
    :cond_0
    return-void
.end method

.method public updatePreviewSize()V
    .locals 4

    .prologue
    .line 164
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    if-nez v3, :cond_1

    .line 172
    :cond_0
    return-void

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mDeviceSettings:Lcom/motorola/camera/DeviceSettings;

    invoke-virtual {v3}, Lcom/motorola/camera/DeviceSettings;->getPreviewAspectRatio()F

    move-result v2

    .line 168
    .local v2, previewAspectRatio:F
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mPreviewSizeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;

    .line 169
    .local v1, listener:Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;
    iget-object v3, p0, Lcom/motorola/camera/AppSettings;->mRawSize:Landroid/graphics/Point;

    invoke-static {v3, v2}, Lcom/motorola/camera/Util;->getPreviewFrameSize(Landroid/graphics/Point;F)Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;->onPreviewSizeChanged(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public updateStorageValue(Ljava/lang/String;J)V
    .locals 1
    .parameter "storage"
    .parameter "value"

    .prologue
    .line 809
    const-string v0, "external"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iput-wide p2, p0, Lcom/motorola/camera/AppSettings;->mExternalMemory:J

    .line 815
    :goto_0
    invoke-direct {p0}, Lcom/motorola/camera/AppSettings;->updateStorageSummary()V

    .line 816
    const-string v0, "pref_storage_location_key"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceChanged(Ljava/lang/String;)V

    .line 817
    return-void

    .line 812
    :cond_0
    iput-wide p2, p0, Lcom/motorola/camera/AppSettings;->mInternalMemory:J

    goto :goto_0
.end method
