.class Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;
.super Lcom/motorola/camera/BlurCheckin$CheckinObject;
.source "BlurCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShottoshotCheckinObject"
.end annotation


# instance fields
.field private BLUR_CHECKIN_VERSION:Ljava/lang/String;

.field private MODE:Ljava/lang/String;

.field private SHOTTOSHOTTIME:Ljava/lang/String;

.field private mLoadingFailed:Z

.field private mLocalShottoshotTime:J

.field private mMode:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/BlurCheckin;)V
    .locals 1
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .line 1057
    const-string v0, "SHOTTIME"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->SHOTTOSHOTTIME:Ljava/lang/String;

    .line 1060
    const-string v0, "MODE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->MODE:Ljava/lang/String;

    .line 1061
    const-string v0, "1.2"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    .line 1065
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1056
    invoke-direct {p0, p1}, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;)V

    return-void
.end method

.method private resetValues()V
    .locals 4

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedShottoshotObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$2700(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const-wide/16 v2, 0x0

    #setter for: Lcom/motorola/camera/BlurCheckin;->mShottoshotTime:J
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/BlurCheckin;->access$2802(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1148
    monitor-exit v1

    .line 1149
    return-void

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkinValues(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 1115
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1116
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checking in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mLoadingFailed:Z

    if-nez v1, :cond_2

    .line 1121
    :try_start_0
    new-instance v0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$800()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1123
    .local v0, e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->SHOTTOSHOTTIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mLocalShottoshotTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 1124
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->MODE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    .end local v0           #e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1134
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checked in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_1
    return-void

    .line 1130
    :cond_2
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initializeValues()V
    .locals 2

    .prologue
    .line 1068
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1069
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializing values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mLocalShottoshotTime:J

    .line 1074
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1075
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialized values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1
    return-void
.end method

.method public loadValues()V
    .locals 5

    .prologue
    .line 1080
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1081
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedShottoshotObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$2700(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mShottoshotTime:J
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$2800(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mLocalShottoshotTime:J

    .line 1086
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedPreferenceGroupObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$1200(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1089
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1090
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Preference group is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mLoadingFailed:Z

    .line 1094
    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mLoadingFailed:Z

    if-nez v1, :cond_2

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v1

    const-string v3, "pref_camera_mode_key"

    invoke-virtual {v1, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    .end local v0           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 1098
    .restart local v0       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1100
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mMode:Ljava/lang/String;

    .line 1105
    .end local v0           #preference:Lcom/motorola/camera/ListPreference;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1107
    invoke-direct {p0}, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->resetValues()V

    .line 1109
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 1110
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loaded values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_3
    return-void

    .line 1086
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1105
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public printValues()V
    .locals 4

    .prologue
    .line 1140
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1141
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLocalShottoshotTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;->mLocalShottoshotTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    return-void
.end method
