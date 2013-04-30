.class Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;
.super Lcom/motorola/camera/BlurCheckin$CheckinObject;
.source "BlurCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimedOutCheckinObject"
.end annotation


# instance fields
.field private BLUR_CHECKIN_VERSION:Ljava/lang/String;

.field private BTNPRESS:Ljava/lang/String;

.field private INSTONSETTING:Ljava/lang/String;

.field private LAUNCHTYPE:Ljava/lang/String;

.field private POCKETDETECTION:Ljava/lang/String;

.field private USECASE:Ljava/lang/String;

.field private mBtnPressDuration:J

.field private mInstOnSetting:Ljava/lang/String;

.field private mLaunchType:Ljava/lang/String;

.field private mLoadingFailed:Z

.field private mPocketDetected:Z

.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/BlurCheckin;)V
    .locals 1
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .line 1154
    const-string v0, "USECASE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->USECASE:Ljava/lang/String;

    .line 1155
    const-string v0, "INPOCKET"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->POCKETDETECTION:Ljava/lang/String;

    .line 1156
    const-string v0, "LNCH"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    .line 1157
    const-string v0, "BTNPRESS"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->BTNPRESS:Ljava/lang/String;

    .line 1158
    const-string v0, "INSTONSET"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->INSTONSETTING:Ljava/lang/String;

    .line 1160
    const-string v0, "1.3"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    .line 1167
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;)V

    return-void
.end method

.method private resetValues()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 1258
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/camera/BlurCheckin;->mCameraAppTimedOut:Z
    invoke-static {v0, v1}, Lcom/motorola/camera/BlurCheckin;->access$3502(Lcom/motorola/camera/BlurCheckin;Z)Z

    .line 1259
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$2900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1260
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const-string v2, "TRAY"

    #setter for: Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/motorola/camera/BlurCheckin;->access$3002(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;)Ljava/lang/String;

    .line 1261
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonDownTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/BlurCheckin;->access$3302(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1263
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonUpTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/BlurCheckin;->access$3202(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1264
    return-void

    .line 1261
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkinValues(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 1220
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1221
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checking in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mLoadingFailed:Z

    if-nez v1, :cond_2

    .line 1226
    :try_start_0
    new-instance v0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$800()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1228
    .local v0, e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mLaunchType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->BTNPRESS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mBtnPressDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 1232
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->INSTONSETTING:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mInstOnSetting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v0           #e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1242
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checked in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$3400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1246
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$3400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1247
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    return-void

    .line 1238
    :cond_2
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initializeValues()V
    .locals 2

    .prologue
    .line 1170
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1171
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializing values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    const-string v0, "NOT_SUPRTED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mInstOnSetting:Ljava/lang/String;

    .line 1176
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1177
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialized values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_1
    return-void
.end method

.method public loadValues()V
    .locals 6

    .prologue
    .line 1182
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1183
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loading values"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$2900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1187
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3000(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mLaunchType:Ljava/lang/String;

    .line 1188
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    const/4 v1, 0x0

    .line 1191
    .local v1, InstantValuePreference:Lcom/motorola/camera/ListPreference;
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedPreferenceGroupObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1200(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1192
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1193
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Preference group is null!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mLoadingFailed:Z

    .line 1197
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mLoadingFailed:Z

    if-nez v2, :cond_2

    .line 1198
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isInstantOnSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1199
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v2

    const-string v4, "pref_instant_on_key"

    invoke-virtual {v2, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/motorola/camera/ListPreference;

    move-object v1, v0

    .line 1201
    if-eqz v1, :cond_2

    .line 1202
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1203
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mInstOnSetting:Ljava/lang/String;

    .line 1208
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1210
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mInPocketDetected:Z
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3100(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mPocketDetected:Z

    .line 1211
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonUpTime:J
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3200(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonDownTime:J
    invoke-static {v4}, Lcom/motorola/camera/BlurCheckin;->access$3300(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->mBtnPressDuration:J

    .line 1212
    invoke-direct {p0}, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;->resetValues()V

    .line 1214
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1215
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loaded values"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_3
    return-void

    .line 1188
    .end local v1           #InstantValuePreference:Lcom/motorola/camera/ListPreference;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1208
    .restart local v1       #InstantValuePreference:Lcom/motorola/camera/ListPreference;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public printValues()V
    .locals 2

    .prologue
    .line 1252
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1253
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    return-void
.end method
