.class public Lcom/motorola/camera/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/LocationManager$GetAddressTask;
    }
.end annotation


# static fields
.field public static final LOC_FOUND:I = 0x4

.field public static final LOC_NOT_ENABLED:I = 0x3

.field public static final LOC_OUTSERVICE:I = 0x1

.field public static final LOC_RETRIEVING_NAME:I = 0x2

.field public static final LOC_SEARCHING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManager"

.field private static final TWO_MINUTES:I = 0x1d4c0

.field private static mLocationManager:Landroid/location/LocationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLocating:Z

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mPrefGroup:Lcom/motorola/camera/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lcom/motorola/camera/LocationManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/LocationManager$1;-><init>(Lcom/motorola/camera/LocationManager;)V

    iput-object v0, p0, Lcom/motorola/camera/LocationManager;->mLocationListener:Landroid/location/LocationListener;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/LocationManager;Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/LocationManager;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/LocationManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/camera/LocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .parameter "lastLocation"
    .parameter "newLocation"

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    const/4 v10, 0x1

    .line 183
    :goto_0
    return v10

    .line 154
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 155
    .local v8, timeDelta:J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 156
    .local v6, isSignificantlyNewer:Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 157
    .local v7, isSignificantlyOlder:Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 159
    .local v4, isNewer:Z
    :goto_3
    if-eqz v6, :cond_4

    .line 160
    const/4 v10, 0x1

    goto :goto_0

    .line 155
    .end local v4           #isNewer:Z
    .end local v6           #isSignificantlyNewer:Z
    .end local v7           #isSignificantlyOlder:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 156
    .restart local v6       #isSignificantlyNewer:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 157
    .restart local v7       #isSignificantlyOlder:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 161
    .restart local v4       #isNewer:Z
    :cond_4
    if-eqz v7, :cond_5

    .line 162
    const/4 v10, 0x0

    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 167
    .local v0, accuracyDelta:I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 168
    .local v2, isLessAccurate:Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 169
    .local v3, isMoreAccurate:Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 172
    .local v5, isSignificantlyLessAccurate:Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/motorola/camera/LocationManager;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 176
    .local v1, isFromSameProvider:Z
    if-eqz v3, :cond_9

    .line 177
    const/4 v10, 0x1

    goto :goto_0

    .line 167
    .end local v1           #isFromSameProvider:Z
    .end local v2           #isLessAccurate:Z
    .end local v3           #isMoreAccurate:Z
    .end local v5           #isSignificantlyLessAccurate:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 168
    .restart local v2       #isLessAccurate:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 169
    .restart local v3       #isMoreAccurate:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 178
    .restart local v1       #isFromSameProvider:Z
    .restart local v5       #isSignificantlyLessAccurate:Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 179
    const/4 v10, 0x1

    goto :goto_0

    .line 180
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 181
    const/4 v10, 0x1

    goto :goto_0

    .line 183
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private isLocationEnabledInPreferences()Z
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/motorola/camera/LocationManager;->mPrefGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/LocationManager;->mPrefGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_record_location_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CheckboxPreference;

    .line 137
    .local v0, location:Lcom/motorola/camera/CheckboxPreference;
    invoke-virtual {v0}, Lcom/motorola/camera/CheckboxPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static isLocationProviderEnabled()Z
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 145
    :cond_0
    sget-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "provider1"
    .parameter "provider2"

    .prologue
    .line 194
    if-nez p1, :cond_1

    .line 195
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private startReceivingLocationUpdates()V
    .locals 7

    .prologue
    .line 76
    sget-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/motorola/camera/LocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 82
    :cond_0
    sget-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/motorola/camera/LocationManager;->mIsLocating:Z

    if-nez v0, :cond_4

    .line 84
    :try_start_0
    sget-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x4248

    iget-object v5, p0, Lcom/motorola/camera/LocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/LocationManager;->mIsLocating:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x4248

    iget-object v5, p0, Lcom/motorola/camera/LocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/LocationManager;->mIsLocating:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 107
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "LocationManager"

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setLocationStatus(I)V

    .line 110
    :cond_4
    return-void

    .line 90
    :catch_0
    move-exception v6

    .line 91
    .local v6, ex:Ljava/lang/SecurityException;
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 93
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 103
    .local v6, ex:Ljava/lang/SecurityException;
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 104
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 105
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopReceivingLocationUpdates()V
    .locals 3

    .prologue
    .line 116
    sget-object v1, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 118
    :try_start_0
    sget-object v1, Lcom/motorola/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/motorola/camera/LocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LocationManager"

    const-string v2, "stopReceivingLocationUpdates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/LocationManager;->mIsLocating:Z

    .line 125
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LocationManager"

    const-string v2, "fail to remove location listners, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    const-string v0, "pref_record_location_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->isLocationEnabledInPreferences()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->startReceivingLocationUpdates()V

    goto :goto_0

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/motorola/camera/LocationManager;->mPrefGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 203
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->isLocationEnabledInPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->startReceivingLocationUpdates()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method

.method public startLocationUpdates(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/camera/LocationManager;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->isLocationEnabledInPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->startReceivingLocationUpdates()V

    .line 65
    :cond_0
    return-void
.end method

.method public stopLocationUpdates()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    .line 69
    return-void
.end method
