.class Lcom/android/server/AppWidgetServiceImpl;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;,
        Lcom/android/server/AppWidgetServiceImpl$Host;,
        Lcom/android/server/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/AppWidgetServiceImpl$Injector;
    }
.end annotation


# static fields
.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDeletedHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mMaxWidgetBitmapMemory:I

.field mNextAppWidgetId:I

.field mPackagesWithBindWidgetPermission:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPm:Landroid/content/pm/IPackageManager;

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mStateLoaded:Z

.field mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "userId"

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    .line 182
    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    .line 184
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 185
    iput p2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 187
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 188
    return-void
.end method

.method private bindAppWidgetIdImpl(ILandroid/content/ComponentName;)V
    .locals 9
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    const/4 v7, 0x1

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 513
    .local v1, ident:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 514
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 516
    .local v0, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v0, :cond_0

    .line 517
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "bad appWidgetId"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 549
    .end local v0           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 551
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 519
    .restart local v0       #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    :try_start_3
    iget-object v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v5, :cond_1

    .line 520
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appWidgetId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already bound to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 523
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v4

    .line 524
    .local v4, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v4, :cond_2

    .line 525
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not a appwidget provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 527
    :cond_2
    iget-boolean v5, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v5, :cond_3

    .line 528
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 532
    :cond_3
    iput-object v4, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 533
    iget-object v5, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v5, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 535
    .local v3, instancesSize:I
    if-ne v3, v7, :cond_4

    .line 537
    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 544
    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput p1, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 547
    invoke-static {v4}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 548
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 549
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 551
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    return-void
.end method

.method private callerHasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 577
    .local v0, callingUid:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserId;->isSameApp(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 585
    :goto_0
    return v2

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 583
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 584
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 585
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 766
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 767
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 768
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 769
    .local v2, key:Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 770
    .local v0, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 774
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 775
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 779
    .end local v0           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2           #key:Landroid/content/Intent$FilterComparison;
    :cond_1
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 6
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 720
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 740
    .local v0, conn:Landroid/content/ServiceConnection;
    iget-object v4, p2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v4, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v4}, Landroid/os/UserId;->getUserId(I)I

    move-result v3

    .line 743
    .local v3, userId:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 745
    .local v1, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v0, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    return-void

    .line 747
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V
    .locals 1
    .parameter "id"
    .parameter "index"
    .parameter "pw"

    .prologue
    .line 317
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 319
    const-string v0, "    hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 321
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 322
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 323
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "    provider="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_1

    .line 328
    const-string v0, "    host.callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 330
    :cond_1
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 331
    const-string v0, "    views="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    :cond_2
    return-void
.end method

.method private dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .locals 1
    .parameter "host"
    .parameter "index"
    .parameter "pw"

    .prologue
    .line 307
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 309
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 310
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 311
    const-string v0, "    callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 312
    const-string v0, "    instances.size="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 313
    const-string v0, " zombie="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 314
    return-void
.end method

.method private dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .locals 2
    .parameter "p"
    .parameter "index"
    .parameter "pw"

    .prologue
    .line 287
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 288
    .local v0, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 291
    const-string v1, "    min=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 292
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 293
    const-string v1, ")   minResize=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 294
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 295
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 297
    const-string v1, " resizeMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 299
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 301
    const-string v1, " initialLayout=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    const-string v1, " zombie="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 304
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadAppWidgetList()V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadStateLocked()V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    .line 387
    :cond_0
    return-void
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I
    .locals 4
    .parameter "p"

    .prologue
    .line 1230
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1231
    .local v2, instancesSize:I
    new-array v0, v2, [I

    .line 1232
    .local v0, appWidgetIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1233
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 1232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    return-object v0
.end method

.method static getSettingsFile(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 1617
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .locals 2
    .parameter "appWidgetId"
    .parameter "fc"

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 760
    .restart local v0       #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 761
    return-void

    .line 757
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 758
    .restart local v0       #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .locals 17
    .parameter "component"
    .parameter "ri"

    .prologue
    .line 1251
    const/4 v7, 0x0

    .line 1253
    .local v7, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1254
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x0

    .line 1256
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.appwidget.provider"

    invoke-virtual {v1, v14, v15}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 1258
    if-nez v9, :cond_1

    .line 1259
    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    const/4 v8, 0x0

    .line 1331
    if-eqz v9, :cond_0

    .line 1332
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1334
    :cond_0
    :goto_0
    return-object v8

    .line 1264
    :cond_1
    :try_start_1
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1268
    .local v2, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_3

    const/4 v14, 0x2

    if-ne v12, v14, :cond_2

    .line 1272
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1273
    .local v6, nodeName:Ljava/lang/String;
    const-string v14, "appwidget-provider"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1274
    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1276
    const/4 v8, 0x0

    .line 1331
    if-eqz v9, :cond_0

    .line 1332
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 1279
    :cond_4
    :try_start_2
    new-instance v8, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {v8}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1280
    .end local v7           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .local v8, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :try_start_3
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v5, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1281
    .local v5, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1282
    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    .line 1284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 1287
    .local v10, res:Landroid/content/res/Resources;
    sget-object v14, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v10, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1293
    .local v11, sa:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1295
    .local v13, value:Landroid/util/TypedValue;
    if-eqz v13, :cond_7

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_1
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 1296
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1297
    if-eqz v13, :cond_8

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_2
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 1298
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1300
    if-eqz v13, :cond_9

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_3
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 1301
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1303
    if-eqz v13, :cond_a

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_4
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 1304
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 1306
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 1308
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1310
    .local v3, className:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1311
    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 1313
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1315
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 1317
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 1319
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 1323
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1331
    if-eqz v9, :cond_6

    .line 1332
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    move-object v7, v8

    .line 1334
    .end local v8           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v7       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto/16 :goto_0

    .line 1295
    .end local v3           #className:Ljava/lang/String;
    .end local v7           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v8       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1297
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 1300
    :cond_9
    :try_start_4
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    goto :goto_3

    .line 1303
    :cond_a
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 1324
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v5           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6           #nodeName:Ljava/lang/String;
    .end local v8           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v10           #res:Landroid/content/res/Resources;
    .end local v11           #sa:Landroid/content/res/TypedArray;
    .end local v12           #type:I
    .end local v13           #value:Landroid/util/TypedValue;
    .restart local v7       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catch_0
    move-exception v4

    .line 1328
    .local v4, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1329
    const/4 v8, 0x0

    .line 1331
    if-eqz v9, :cond_0

    .line 1332
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 1331
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_6
    if-eqz v9, :cond_b

    .line 1332
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v14

    .line 1331
    .end local v7           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v6       #nodeName:Ljava/lang/String;
    .restart local v8       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v12       #type:I
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v7       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto :goto_6

    .line 1324
    .end local v7           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v8       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catch_1
    move-exception v4

    move-object v7, v8

    .end local v8           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v7       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto :goto_5
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 698
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 700
    .local v0, appWidgetId:I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 702
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 703
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 704
    .local v3, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 705
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 707
    .local v1, conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 708
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 709
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 715
    .end local v1           #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 716
    return-void
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .parameter "ri"

    .prologue
    const/4 v1, 0x0

    .line 1148
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v1

    .line 1151
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    .line 1156
    .local v0, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    const/4 v1, 0x1

    goto :goto_0
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 11
    .parameter "pkgName"

    .prologue
    .line 1647
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    iget v10, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v7, v4, v8, v9, v10}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1658
    .local v2, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 1659
    .local v0, N:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 1660
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1661
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1662
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 1659
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1654
    .end local v0           #N:I
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #i:I
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v5

    .line 1669
    :cond_1
    return-void

    .line 1658
    .restart local v2       #broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1665
    .restart local v0       #N:I
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v3       #i:I
    .restart local v6       #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1666
    invoke-virtual {p0, v6}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    goto :goto_2
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 6
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 391
    .local v1, callingUid:I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 393
    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 395
    .local v0, appWidgetId:I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    .line 397
    .local v2, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    .line 398
    .local v3, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 399
    iput-object v2, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 401
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 406
    monitor-exit v5

    return v0

    .line 407
    .end local v0           #appWidgetId:I
    .end local v2           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v3           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 4
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APPWIDGET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidgetId appWidgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;)V

    .line 559
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "packageName"
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_APPWIDGET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;)V

    .line 571
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, se:Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->callerHasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 17
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "connection"

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v14

    .line 619
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 620
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v7

    .line 621
    .local v7, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v7, :cond_0

    .line 622
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad appWidgetId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 665
    .end local v7           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 624
    .restart local v7       #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 626
    .local v2, componentName:Landroid/content/ComponentName;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    invoke-virtual {v13, v2, v15}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 628
    .local v9, si:Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 629
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 632
    .end local v9           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v5

    .line 633
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 639
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #si:Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v3, 0x0

    .line 640
    .local v3, conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    new-instance v6, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 641
    .local v6, fc:Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 642
    .local v8, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 644
    .restart local v3       #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v3}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v4, v3

    .line 649
    .end local v3           #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .local v4, conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    iget-object v13, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v13, v13, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v13}, Landroid/os/UserId;->getUserId(I)I

    move-result v12

    .line 652
    .local v12, userId:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 654
    .local v10, token:J
    :try_start_4
    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v3, v8, v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 655
    .end local v4           #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v3       #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v3, v15, v12}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 658
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 665
    monitor-exit v14

    .line 666
    return-void

    .line 658
    .end local v3           #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v4       #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4           #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v3       #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v13

    goto :goto_0
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z
    .locals 3
    .parameter "id"
    .parameter "callingUid"

    .prologue
    const/4 v0, 0x1

    .line 1058
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    if-ne v1, p2, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return v0

    .line 1062
    :cond_1
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-eq v1, p2, :cond_0

    .line 1066
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 498
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 502
    .local v0, token:J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 508
    .end local v0           #token:J
    :cond_0
    return-void

    .line 504
    .restart local v0       #token:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method computeMaximumWidgetBitmapMemory()V
    .locals 5

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 192
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v0

    .line 193
    .local v0, height:I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRawWidth()I

    move-result v1

    .line 196
    .local v1, width:I
    mul-int/lit8 v3, v1, 0x6

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 197
    return-void
.end method

.method public deleteAllHosts()V
    .locals 7

    .prologue
    .line 434
    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 435
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 436
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 437
    .local v1, callingUid:I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 438
    .local v0, N:I
    const/4 v2, 0x0

    .line 439
    .local v2, changed:Z
    add-int/lit8 v4, v0, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 440
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 441
    .local v3, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    iget v5, v3, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    if-ne v5, v1, :cond_0

    .line 442
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 443
    const/4 v2, 0x1

    .line 439
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 446
    .end local v3           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1
    if-eqz v2, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 449
    :cond_2
    monitor-exit v6

    .line 450
    return-void

    .line 449
    .end local v0           #N:I
    .end local v1           #callingUid:I
    .end local v2           #changed:Z
    .end local v4           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public deleteAppWidgetId(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 414
    .local v0, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 418
    :cond_0
    monitor-exit v2

    .line 419
    return-void

    .line 418
    .end local v0           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 469
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 470
    .local v0, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 473
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 475
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 476
    .local v2, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_0

    .line 477
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 478
    iget-boolean v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_0

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 482
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;I)V

    .line 484
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 486
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 489
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 491
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;I)V

    .line 495
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteHost(I)V
    .locals 4
    .parameter "hostId"

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 423
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 425
    .local v0, callingUid:I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v1

    .line 426
    .local v1, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 430
    :cond_0
    monitor-exit v3

    .line 431
    return-void

    .line 430
    .end local v0           #callingUid:I
    .end local v1           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .locals 4
    .parameter "host"

    .prologue
    .line 453
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 454
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 455
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 456
    .local v2, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 454
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 458
    .end local v2           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 459
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 460
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 463
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 346
    .local v0, N:I
    const-string v2, "Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 352
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string v2, "AppWidgetIds:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 355
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 359
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const-string v2, "Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 365
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 366
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const-string v2, "Deleted Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 369
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 372
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 373
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v2, "Deleted Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 376
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 378
    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .locals 6
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1354
    .local v0, callingUid:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1359
    .local v2, packageUid:I
    invoke-static {v0, v2}, Landroid/os/UserId;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1360
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1355
    .end local v2           #packageUid:I
    :catch_0
    move-exception v1

    .line 1356
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1363
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #packageUid:I
    :cond_0
    return v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 4
    .parameter "provider"

    .prologue
    .line 1239
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1240
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    .line 1242
    .local v0, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-ne v1, v3, :cond_0

    .line 1243
    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    monitor-exit v2

    .line 1245
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_0

    .line 1247
    .end local v0           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 783
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 785
    .local v0, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_0

    .line 786
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    monitor-exit v2

    .line 788
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 789
    .end local v0           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 869
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 870
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 871
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 872
    .local v0, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    monitor-exit v2

    .line 875
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2

    goto :goto_0

    .line 877
    .end local v0           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 794
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 795
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 796
    .local v0, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_0

    .line 797
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    monitor-exit v2

    .line 799
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 800
    .end local v0           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 805
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 806
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 807
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 808
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 809
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 810
    .local v2, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-boolean v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v4, :cond_0

    .line 811
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 814
    .end local v2           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    monitor-exit v5

    return-object v3

    .line 815
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1340
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1344
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1345
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1347
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 1341
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 595
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 596
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method loadAppWidgetList()V
    .locals 9

    .prologue
    .line 1131
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v3, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    iget v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v5, v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 1137
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1138
    .local v0, N:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1139
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1140
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 1138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1137
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1142
    .end local v1           #broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v5

    .line 1145
    :cond_1
    return-void
.end method

.method loadStateLocked()V
    .locals 6

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->savedStateFile()Lcom/android/internal/os/AtomicFile;

    move-result-object v1

    .line 1386
    .local v1, file:Lcom/android/internal/os/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 1387
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1389
    if-eqz v2, :cond_0

    .line 1391
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1399
    .end local v2           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 1392
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 1393
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1396
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 1397
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .locals 5
    .parameter "appWidgetId"

    .prologue
    .line 1075
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1076
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1077
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1078
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1079
    .local v3, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1083
    .end local v3           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :goto_1
    return-object v3

    .line 1077
    .restart local v3       #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1083
    .end local v3           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;
    .locals 4
    .parameter "uid"
    .parameter "hostId"

    .prologue
    .line 1098
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1099
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1100
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1101
    .local v1, h:Lcom/android/server/AppWidgetServiceImpl$Host;
    iget v3, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v3, p2, :cond_0

    .line 1105
    .end local v1           #h:Lcom/android/server/AppWidgetServiceImpl$Host;
    :goto_1
    return-object v1

    .line 1099
    .restart local v1       #h:Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1105
    .end local v1           #h:Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;
    .locals 5
    .parameter "uid"
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 1109
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1110
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1111
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1112
    .local v1, h:Lcom/android/server/AppWidgetServiceImpl$Host;
    iget v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v4, p3, :cond_0

    iget-object v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1121
    .end local v1           #h:Lcom/android/server/AppWidgetServiceImpl$Host;
    :goto_1
    return-object v1

    .line 1110
    .restart local v1       #h:Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1116
    .end local v1           #h:Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1
    new-instance v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    .line 1117
    .local v2, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    .line 1118
    iput p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    .line 1119
    iput p3, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    .line 1120
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 1121
    goto :goto_1
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .locals 4
    .parameter "provider"

    .prologue
    .line 1087
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1088
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1089
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1090
    .local v2, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    .end local v2           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :goto_1
    return-object v2

    .line 1088
    .restart local v2       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1094
    .end local v2           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 5
    .parameter "appWidgetIds"
    .parameter "viewId"

    .prologue
    .line 899
    if-nez p1, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 905
    array-length v0, p1

    .line 907
    .local v0, N:I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 908
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 909
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 910
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    .line 911
    .local v2, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 913
    .end local v2           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V
    .locals 11
    .parameter "id"
    .parameter "viewId"

    .prologue
    .line 968
    if-eqz p1, :cond_2

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_2

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v9, :cond_2

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v9, :cond_2

    .line 970
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v9, :cond_0

    .line 973
    :try_start_0
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-interface {v9, v10, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_0
    :goto_0
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v9, :cond_2

    .line 984
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 985
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$FilterComparison;

    .line 986
    .local v4, key:Landroid/content/Intent$FilterComparison;
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 987
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 989
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/AppWidgetServiceImpl;)V

    .line 1010
    .local v0, conn:Landroid/content/ServiceConnection;
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v9}, Landroid/os/UserId;->getUserId(I)I

    move-result v8

    .line 1012
    .local v8, userId:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1014
    .local v6, token:J
    :try_start_1
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v9, v3, v0, v10, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1016
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 974
    .end local v0           #conn:Landroid/content/ServiceConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #key:Landroid/content/Intent$FilterComparison;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6           #token:J
    .end local v8           #userId:I
    :catch_0
    move-exception v1

    .line 977
    .local v1, e:Landroid/os/RemoteException;
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_0

    .line 1016
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #conn:Landroid/content/ServiceConnection;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #key:Landroid/content/Intent$FilterComparison;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .restart local v6       #token:J
    .restart local v8       #userId:I
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1022
    .end local v0           #conn:Landroid/content/ServiceConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #key:Landroid/content/Intent$FilterComparison;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6           #token:J
    .end local v8           #userId:I
    :cond_2
    return-void
.end method

.method onBroadcastReceived(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 228
    .local v1, added:Z
    const/4 v3, 0x0

    .line 229
    .local v3, changed:Z
    const/4 v7, 0x0

    .line 230
    .local v7, pkgList:[Ljava/lang/String;
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 231
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 232
    const/4 v1, 0x1

    .line 249
    :goto_0
    if-eqz v7, :cond_0

    array-length v10, v7

    if-nez v10, :cond_3

    .line 284
    :cond_0
    :goto_1
    return-void

    .line 233
    :cond_1
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 234
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 235
    const/4 v1, 0x0

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 238
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 241
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, pkgName:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 245
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    .end local v7           #pkgList:[Ljava/lang/String;
    aput-object v8, v7, v11

    .line 246
    .restart local v7       #pkgList:[Ljava/lang/String;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 247
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 252
    .end local v8           #pkgName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3
    if-nez v1, :cond_4

    if-eqz v3, :cond_8

    .line 253
    :cond_4
    iget-object v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v11

    .line 254
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 255
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 256
    .local v4, extras:Landroid/os/Bundle;
    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    const-string v10, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 258
    :cond_5
    move-object v2, v7

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v8, v2, v5

    .line 260
    .restart local v8       #pkgName:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 264
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #pkgName:Ljava/lang/String;
    :cond_6
    move-object v2, v7

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_7

    aget-object v8, v2, v5

    .line 265
    .restart local v8       #pkgName:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;)V

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 268
    .end local v8           #pkgName:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 269
    monitor-exit v11

    goto :goto_1

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 271
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 272
    .restart local v4       #extras:Landroid/os/Bundle;
    if-eqz v4, :cond_9

    const-string v10, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 275
    :cond_9
    iget-object v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v11

    .line 276
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 277
    move-object v2, v7

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_4
    if-ge v5, v6, :cond_a

    aget-object v8, v2, v5

    .line 278
    .restart local v8       #pkgName:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 281
    .end local v8           #pkgName:Ljava/lang/String;
    :cond_a
    monitor-exit v11

    goto/16 :goto_1

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10
.end method

.method onConfigurationChanged()V
    .locals 7

    .prologue
    .line 208
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 209
    .local v4, revised:Ljava/util/Locale;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    :cond_0
    iput-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 212
    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 214
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 215
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 216
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 217
    .local v2, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v5, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 215
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 220
    .end local v2           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 221
    monitor-exit v6

    .line 223
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_2
    return-void

    .line 221
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method onUserRemoved()V
    .locals 4

    .prologue
    .line 1638
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1639
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1640
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1641
    .local v2, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1639
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1643
    .end local v2           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_0
    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1644
    return-void
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 5
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 881
    if-nez p1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 887
    array-length v0, p1

    .line 889
    .local v0, N:I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 890
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 891
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 892
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    .line 893
    .local v2, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 895
    .end local v2           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 1125
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1128
    :cond_0
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 26
    .parameter "stream"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1480
    const/16 v20, 0x0

    .line 1482
    .local v20, success:Z
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 1483
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1486
    const/16 v18, 0x0

    .line 1487
    .local v18, providerIndex:I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1489
    .local v10, loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    :cond_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .line 1490
    .local v22, type:I
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1491
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1492
    .local v21, tag:Ljava/lang/String;
    const-string v23, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1495
    const/16 v23, 0x0

    const-string v24, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1496
    .local v16, pkg:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "cl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1498
    .local v3, cl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v13

    .line 1500
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    :try_start_1
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1507
    :goto_0
    :try_start_2
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v11

    .line 1508
    .local v11, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 1510
    new-instance v11, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .end local v11           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    invoke-direct {v11}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V

    .line 1511
    .restart local v11       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    new-instance v23, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v23 .. v23}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1512
    iget-object v0, v11, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1513
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v11, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    :cond_1
    if-eqz v11, :cond_2

    .line 1518
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1520
    :cond_2
    add-int/lit8 v18, v18, 0x1

    .line 1583
    .end local v3           #cl:Ljava/lang/String;
    .end local v11           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1584
    const/16 v20, 0x1

    .line 1597
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v22           #type:I
    :goto_2
    if-eqz v20, :cond_b

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v8, v23, -0x1

    .local v8, i:I
    :goto_3
    if-ltz v8, :cond_c

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1600
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1501
    .end local v8           #i:I
    .restart local v3       #cl:Ljava/lang/String;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v13       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #pkg:Ljava/lang/String;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :catch_0
    move-exception v4

    .line 1502
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v23, 0x1

    :try_start_3
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1504
    .local v17, pkgs:[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v16, v17, v23

    goto/16 :goto_0

    .line 1521
    .end local v3           #cl:Ljava/lang/String;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #pkgs:[Ljava/lang/String;
    :cond_4
    const-string v23, "h"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1522
    new-instance v7, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v7}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    .line 1526
    .local v7, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    const/16 v23, 0x0

    const-string v24, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1528
    :try_start_4
    iget-object v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1532
    :goto_4
    :try_start_5
    iget-boolean v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1535
    :cond_5
    const/16 v23, 0x0

    const-string v24, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 1585
    .end local v7           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_1
    move-exception v4

    .line 1586
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v23, "AppWidgetServiceImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1529
    .end local v4           #e:Ljava/lang/NullPointerException;
    .restart local v7       #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :catch_2
    move-exception v5

    .line 1530
    .local v5, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v23, 0x1

    :try_start_6
    move/from16 v0, v23

    iput-boolean v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    .line 1587
    .end local v5           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_3
    move-exception v4

    .line 1588
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v23, "AppWidgetServiceImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1539
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :cond_6
    :try_start_7
    const-string v23, "b"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1540
    const/16 v23, 0x0

    const-string v24, "packageName"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1541
    .local v14, packageName:Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 1589
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_4
    move-exception v4

    .line 1590
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v23, "AppWidgetServiceImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1544
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :cond_7
    :try_start_8
    const-string v23, "g"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1545
    new-instance v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v9}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    .line 1546
    .local v9, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/16 v23, 0x0

    const-string v24, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 1547
    iget v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/AppWidgetServiceImpl$Injector;->isDuplicateWidgetId(Lcom/android/server/AppWidgetServiceImpl;I)Z

    move-result v23

    if-nez v23, :cond_3

    iget v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 1548
    iget v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 1551
    :cond_8
    const/16 v23, 0x0

    const-string v24, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1552
    .local v19, providerString:Ljava/lang/String;
    if-eqz v19, :cond_9

    .line 1556
    const/16 v23, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 1557
    .local v12, pIndex:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1562
    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1569
    .end local v12           #pIndex:I
    :cond_9
    const/16 v23, 0x0

    const-string v24, "h"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 1570
    .local v6, hIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1571
    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1576
    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1577
    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    :cond_a
    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 1591
    .end local v6           #hIndex:I
    .end local v9           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v19           #providerString:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_5
    move-exception v4

    .line 1592
    .local v4, e:Ljava/io/IOException;
    const-string v23, "AppWidgetServiceImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1593
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 1594
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v23, "AppWidgetServiceImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1605
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    const-string v23, "AppWidgetServiceImpl"

    const-string v24, "Failed to read state, clearing widgets and hosts."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1610
    .local v2, N:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_5
    if-ge v8, v2, :cond_c

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1610
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1614
    .end local v2           #N:I
    :cond_c
    return-void
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .locals 11
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    const/4 v7, 0x1

    .line 1202
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_1

    .line 1206
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 1207
    .local v7, alreadyRegistered:Z
    :goto_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1209
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1212
    .local v9, token:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x800

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    if-nez v7, :cond_1

    .line 1218
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1219
    .local v4, period:J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 1220
    const-wide/32 v4, 0x1b7740

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1227
    .end local v4           #period:J
    .end local v7           #alreadyRegistered:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #token:J
    :cond_1
    return-void

    .line 1206
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1215
    .restart local v7       #alreadyRegistered:Z
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #token:J
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method reload()V
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 5
    .parameter "index"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 1165
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1166
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1167
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1169
    .local v2, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 1171
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1173
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1174
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1175
    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1176
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1177
    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1179
    .end local v2           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1180
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1181
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1184
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 1751
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1752
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1753
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1754
    .local v3, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1755
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1752
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1763
    .end local v3           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1764
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1765
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1766
    .local v1, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    iget-object v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1767
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1764
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1770
    .end local v1           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_3
    return-void
.end method

.method saveStateLocked()V
    .locals 6

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->savedStateFile()Lcom/android/internal/os/AtomicFile;

    move-result-object v1

    .line 1405
    .local v1, file:Lcom/android/internal/os/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1406
    .local v2, stream:Ljava/io/FileOutputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1407
    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1415
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1409
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1410
    const-string v3, "AppWidgetServiceImpl"

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1412
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1413
    .local v0, e:Ljava/io/IOException;
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method savedStateFile()Lcom/android/internal/os/AtomicFile;
    .locals 5

    .prologue
    .line 1621
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v0, dir:Ljava/io/File;
    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1623
    .local v2, settingsFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    if-nez v3, :cond_1

    .line 1624
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1625
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1628
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1631
    .local v1, oldFile:Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1633
    .end local v1           #oldFile:Ljava/io/File;
    :cond_1
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v3, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 1187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1189
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;I)V

    .line 1190
    return-void
.end method

.method sendInitialBroadcasts()V
    .locals 6

    .prologue
    .line 1367
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1368
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1369
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1370
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1371
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1372
    .local v3, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1373
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1374
    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    .line 1375
    .local v1, appWidgetIds:[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 1376
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 1370
    .end local v1           #appWidgetIds:[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1379
    .end local v3           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    monitor-exit v5

    .line 1380
    return-void

    .line 1379
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .locals 3
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    .line 1193
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1195
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1196
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1197
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;I)V

    .line 1199
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 606
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 607
    if-eqz p2, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 614
    return-void

    .line 610
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .locals 9
    .parameter "callbacks"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1026
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 1027
    .local v1, callingUid:I
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1028
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1029
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    .line 1030
    .local v2, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1032
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1034
    iget-object v5, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    .line 1035
    .local v5, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1036
    .local v0, N:I
    new-array v6, v0, [I

    .line 1037
    .local v6, updatedIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1038
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1039
    .local v4, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iget v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v7, v6, v3

    .line 1040
    iget-object v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1042
    .end local v4           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    monitor-exit v8

    return-object v6

    .line 1043
    .end local v0           #N:I
    .end local v2           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v3           #i:I
    .end local v5           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    .end local v6           #updatedIds:[I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public stopListening(I)V
    .locals 3
    .parameter "hostId"

    .prologue
    .line 1047
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1048
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1049
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1050
    .local v0, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_0

    .line 1051
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1052
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1054
    :cond_0
    monitor-exit v2

    .line 1055
    return-void

    .line 1054
    .end local v0           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Z)V
    .locals 2
    .parameter "safeMode"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    .line 202
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .locals 6
    .parameter "appWidgetId"
    .parameter "intent"

    .prologue
    .line 670
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 671
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 674
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 676
    .local v2, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v1

    .line 681
    .local v1, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v1, :cond_0

    .line 682
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 693
    .end local v1           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .end local v2           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 685
    .restart local v1       #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .restart local v2       #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 687
    .local v0, conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 688
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 689
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .end local v0           #conn:Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v1           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :goto_0
    monitor-exit v4

    .line 694
    return-void

    .line 691
    :cond_1
    const-string v3, "AppWidgetService"

    const-string v5, "Error (unbindRemoteViewsService): Connection not bound"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 7
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 819
    if-nez p1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    const/4 v1, 0x0

    .line 824
    .local v1, bitmapMemoryUsage:I
    if-eqz p2, :cond_2

    .line 825
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v1

    .line 827
    :cond_2
    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-le v1, v4, :cond_3

    .line 828
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") The total memory cannot exceed that required to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fill the device\'s screen once."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 834
    :cond_3
    array-length v4, p1

    if-eqz v4, :cond_0

    .line 837
    array-length v0, p1

    .line 839
    .local v0, N:I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 840
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 841
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 842
    aget v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v3

    .line 843
    .local v3, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 841
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 845
    .end local v3           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_4
    monitor-exit v5

    goto :goto_0

    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "id"
    .parameter "views"

    .prologue
    .line 937
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 938
    return-void
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V
    .locals 3
    .parameter "id"
    .parameter "views"
    .parameter "isPartialUpdate"

    .prologue
    .line 944
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v1, :cond_1

    .line 947
    if-nez p3, :cond_0

    .line 948
    iput-object p2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 951
    :cond_0
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_1

    .line 954
    :try_start_0
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_1
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_0
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "appWidgetId"
    .parameter "options"

    .prologue
    .line 849
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 850
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 853
    .local v0, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v0, :cond_0

    .line 854
    monitor-exit v4

    .line 866
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 857
    .local v2, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    iput-object p2, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    .line 860
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 862
    const-string v3, "appWidgetId"

    iget v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    const-string v3, "appWidgetOptions"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 864
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;I)V

    .line 865
    monitor-exit v4

    goto :goto_0

    .end local v0           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 10
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 917
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 918
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 919
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 920
    .local v5, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_0

    .line 921
    const-string v6, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    monitor-exit v7

    .line 934
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v4, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    .line 925
    .local v4, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 926
    .local v1, callingUid:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 927
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 928
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 929
    .local v3, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 930
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 927
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 933
    .end local v3           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2
    monitor-exit v7

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #callingUid:I
    .end local v2           #i:I
    .end local v4           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    .end local v5           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 24
    .parameter "pkgName"

    .prologue
    .line 1672
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1673
    .local v15, keep:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1674
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v13, v1, v2, v3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1686
    .local v8, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_2

    const/4 v5, 0x0

    .line 1687
    .local v5, N:I
    :goto_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v5, :cond_7

    .line 1688
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 1689
    .local v19, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1690
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    const/high16 v21, 0x4

    and-int v20, v20, v21

    if-eqz v20, :cond_3

    .line 1687
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1680
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #i:I
    .end local v19           #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v18

    .line 1748
    :cond_1
    return-void

    .line 1686
    .restart local v8       #broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 1693
    .restart local v5       #N:I
    .restart local v6       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v11       #i:I
    .restart local v19       #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1694
    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    .local v9, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 1696
    .local v16, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_4

    .line 1697
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1698
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1701
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v17

    .line 1702
    .local v17, parsed:Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v17, :cond_0

    .line 1703
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1705
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1707
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1708
    .local v4, M:I
    if-lez v4, :cond_0

    .line 1709
    invoke-static/range {v16 .. v16}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v7

    .line 1713
    .local v7, appWidgetIds:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 1717
    const/4 v14, 0x0

    .local v14, j:I
    :goto_3
    if-ge v14, v4, :cond_6

    .line 1718
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1719
    .local v12, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 1720
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1722
    :try_start_1
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v20, v0

    iget v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1717
    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1723
    :catch_1
    move-exception v10

    .line 1727
    .local v10, ex:Landroid/os/RemoteException;
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_4

    .line 1732
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v12           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    goto/16 :goto_2

    .line 1740
    .end local v4           #M:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #appWidgetIds:[I
    .end local v9           #component:Landroid/content/ComponentName;
    .end local v14           #j:I
    .end local v16           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v17           #parsed:Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v19           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1741
    add-int/lit8 v11, v5, -0x1

    :goto_5
    if-ltz v11, :cond_1

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1743
    .restart local v16       #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 1745
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1741
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_5
.end method

.method writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 13
    .parameter "stream"

    .prologue
    const/4 v10, 0x1

    .line 1421
    :try_start_0
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1422
    .local v6, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v6, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1423
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1424
    const/4 v9, 0x0

    const-string v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1426
    const/4 v8, 0x0

    .line 1427
    .local v8, providerIndex:I
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1428
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1429
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1430
    .local v7, p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v9, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1431
    const/4 v9, 0x0

    const-string v11, "p"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1432
    const/4 v9, 0x0

    const-string v11, "pkg"

    iget-object v12, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1433
    const/4 v9, 0x0

    const-string v11, "cl"

    iget-object v12, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1434
    const/4 v9, 0x0

    const-string v11, "p"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1435
    iput v8, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    .line 1436
    add-int/lit8 v8, v8, 0x1

    .line 1428
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1440
    .end local v7           #p:Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1441
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 1442
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1443
    .local v2, host:Lcom/android/server/AppWidgetServiceImpl$Host;
    const/4 v9, 0x0

    const-string v11, "h"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1444
    const/4 v9, 0x0

    const-string v11, "pkg"

    iget-object v12, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1445
    const/4 v9, 0x0

    const-string v11, "id"

    iget v12, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1446
    const/4 v9, 0x0

    const-string v11, "h"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1447
    iput v3, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    .line 1441
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1450
    .end local v2           #host:Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_2
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1451
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 1452
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1453
    .local v4, id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/4 v9, 0x0

    const-string v11, "g"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1454
    const/4 v9, 0x0

    const-string v11, "id"

    iget v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1455
    const/4 v9, 0x0

    const-string v11, "h"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v12, v12, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1456
    iget-object v9, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_3

    .line 1457
    const/4 v9, 0x0

    const-string v11, "p"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v12, v12, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1459
    :cond_3
    const/4 v9, 0x0

    const-string v11, "g"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1451
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1462
    .end local v4           #id:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_4
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1463
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1464
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1465
    const/4 v11, 0x0

    const-string v12, "packageName"

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1466
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1473
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v8           #providerIndex:I
    :catch_0
    move-exception v1

    .line 1474
    .local v1, e:Ljava/io/IOException;
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to write state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v9, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_4
    return v9

    .line 1469
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #providerIndex:I
    :cond_5
    const/4 v9, 0x0

    :try_start_1
    const-string v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1471
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v10

    .line 1472
    goto :goto_4
.end method
