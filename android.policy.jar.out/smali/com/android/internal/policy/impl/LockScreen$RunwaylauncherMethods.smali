.class Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/motorola/android/widget/RunwayLauncher$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunwaylauncherMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private mHideRunwayTarget:I

.field private final mHideTargetArray:[I

.field mIntentList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/motorola/android/widget/RunwayLauncher;)V
    .locals 2
    .parameter
    .parameter "runwayLauncher"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    .line 489
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideTargetArray:[I

    .line 586
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    .line 587
    return-void

    .line 489
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)Lcom/motorola/android/widget/RunwayLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    return-object v0
.end method

.method private getMatchComponentName(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)I
    .locals 11
    .parameter
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, inResolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, inActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p4, intentFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v3, -0x1

    .line 494
    .local v3, index:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 495
    .local v7, preferredSize:I
    const/4 v6, 0x0

    .line 496
    .local v6, match:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    move v4, v3

    .line 523
    .end local v3           #index:I
    .local v4, index:I
    :goto_0
    return v4

    .line 500
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_0
    if-nez v7, :cond_2

    .line 501
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v4, v3

    .line 523
    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 503
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 504
    .local v8, reInfo:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v7, :cond_4

    .line 505
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 506
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 507
    .local v5, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 510
    const/4 v6, 0x1

    .line 514
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v5           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 515
    if-eqz v6, :cond_3

    .line 519
    .end local v1           #i:I
    .end local v8           #reInfo:Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v6, :cond_1

    .line 520
    const/4 v3, 0x0

    goto :goto_1

    .line 504
    .restart local v0       #componentName:Landroid/content/ComponentName;
    .restart local v1       #i:I
    .restart local v5       #intentFilter:Landroid/content/IntentFilter;
    .restart local v8       #reInfo:Landroid/content/pm/ResolveInfo;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getResolveInfos(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/util/List;
    .locals 5
    .parameter "pm"
    .parameter "intent"
    .parameter "havePreferred"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 528
    .local v2, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v3, systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 530
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 532
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez p3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 539
    .end local v3           #systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    return-object v3

    .restart local v3       #systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    move-object v3, v2

    goto :goto_1
.end method

.method private isLocaleSpecial()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 572
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 573
    .local v3, l:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, country:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, lang:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->access$1500()[[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v0, v2

    .line 576
    .local v6, specialLocale:[Ljava/lang/String;
    aget-object v9, v6, v8

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 580
    .end local v6           #specialLocale:[Ljava/lang/String;
    :goto_1
    return v7

    .line 575
    .restart local v6       #specialLocale:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v6           #specialLocale:[Ljava/lang/String;
    :cond_1
    move v7, v8

    .line 580
    goto :goto_1
.end method

.method private setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter "res_id"
    .parameter "pm"
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p4, prefActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p5, intentFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-ltz p1, :cond_0

    const/4 v8, 0x3

    if-le p1, v8, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-direct {p0, p2, p3, v8}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->getResolveInfos(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v7

    .line 548
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 549
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v7, p3, p4, p5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->getMatchComponentName(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)I

    move-result v6

    .line 550
    .local v6, resolveInfoIndex:I
    if-ltz v6, :cond_3

    .line 551
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 552
    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 553
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, appLabel:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v8, p1, v2, v0}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 555
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 556
    .local v4, pkName:Ljava/lang/String;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 557
    .local v1, className:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v3, newIntent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 559
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 547
    .end local v0           #appLabel:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #newIntent:Landroid/content/Intent;
    .end local v4           #pkName:Ljava/lang/String;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #resolveInfoIndex:I
    .end local v7           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 563
    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v6       #resolveInfoIndex:I
    .restart local v7       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideTargetArray:[I

    aget v9, v9, p1

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    goto :goto_0
.end method

.method private showAppErrorDialog()V
    .locals 6

    .prologue
    .line 680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 681
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1900(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10405c3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$2000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10405c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 685
    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;-><init>(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 690
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 691
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 692
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 693
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 694
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v0}, Lcom/motorola/android/widget/RunwayLauncher;->stopPing()V

    .line 733
    return-void
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 727
    const/4 v0, -0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 641
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$2200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 703
    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->resumeBackgroundColor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$2300(Lcom/android/internal/policy/impl/LockScreen;)V

    goto :goto_0
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 643
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 649
    const/4 v3, 0x0

    .line 653
    .local v3, suppressFacelock:Z
    const/4 v2, 0x0

    .line 654
    .local v2, intent:Landroid/content/Intent;
    if-ne p2, v4, :cond_2

    .line 655
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0

    .line 663
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 664
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 667
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 676
    :goto_1
    return-void

    .line 656
    :cond_2
    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    .line 658
    if-ne p2, v5, :cond_3

    .line 659
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0

    goto :goto_0

    .line 660
    :cond_3
    const/4 v4, 0x4

    if-ne p2, v4, :cond_0

    .line 661
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "LockScreen"

    const-string v5, "LockScreen threw ActivityNotFoundException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->showAppErrorDialog()V

    goto :goto_1

    .line 671
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 672
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LockScreen"

    const-string v5, "LockScreen threw Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->showAppErrorDialog()V

    goto :goto_1
.end method

.method public ping()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/RunwayLauncher;->reset(Z)V

    .line 719
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v0, p1}, Lcom/motorola/android/widget/RunwayLauncher;->reset(Z)V

    .line 715
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 0
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 723
    return-void
.end method

.method public updateResources()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/high16 v6, 0x1000

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 592
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v4, prefActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v5, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {v2, v5, v4, v8}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 597
    const/4 v3, 0x0

    .line 599
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 602
    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://about:home"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 607
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 616
    :goto_0
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 619
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    move-object v0, p0

    move v1, v7

    .line 629
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->isLocaleSpecial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const-string v1, "Text"

    invoke-virtual {v0, v7, v8, v1}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/RunwayLauncher;->setHideRunwayTarget(I)V

    .line 638
    return-void

    .line 611
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.DIAL"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v0, "tel:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 613
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 626
    :cond_2
    const-string v0, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
