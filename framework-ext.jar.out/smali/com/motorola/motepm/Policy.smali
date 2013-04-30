.class public abstract Lcom/motorola/motepm/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field public static final BOOLEAN_POLICIES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/motepm/BooleanPolicy;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEBUG_POLICY:Z = true

.field public static final INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy; = null

.field public static final LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy; = null

.field public static final OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy; = null

.field public static final POLICIES:Ljava/util/LinkedHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/motepm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICIES_BY_BROADCAST:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/Policy;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final POLICIES_BY_PACKAGE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/Policy;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final POLICIES_BY_TAG:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/motepm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "MotorolaPolicy"

.field public static final UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;


# instance fields
.field private mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

.field private final mDescriptionResId:I

.field private final mInfoId:I

.field private mNotificationId:I

.field private final mTag:Ljava/lang/String;

.field private final mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/motepm/Policy;->POLICIES_BY_BROADCAST:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/motepm/Policy;->POLICIES_BY_PACKAGE:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/motepm/Policy;->POLICIES_BY_TAG:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/motorola/motepm/policy/BluetoothPolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/BluetoothPolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 61
    new-instance v0, Lcom/motorola/motepm/policy/WifiPolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/WifiPolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 62
    new-instance v0, Lcom/motorola/motepm/policy/NfcPolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/NfcPolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 63
    new-instance v0, Lcom/motorola/motepm/policy/InternetSharingPolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 64
    new-instance v0, Lcom/motorola/motepm/policy/AdbPolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/AdbPolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 65
    new-instance v0, Lcom/motorola/motepm/policy/InstallPackagePolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/InstallPackagePolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 66
    new-instance v0, Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 67
    new-instance v0, Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/LockAdminPolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 68
    new-instance v0, Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    invoke-direct {v0}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;-><init>()V

    invoke-static {v0}, Lcom/motorola/motepm/Policy;->initPolicy(Lcom/motorola/motepm/Policy;)V

    .line 70
    sget-object v0, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/policy/InstallPackagePolicy;

    sput-object v0, Lcom/motorola/motepm/Policy;->INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    .line 72
    sget-object v0, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    sput-object v0, Lcom/motorola/motepm/Policy;->UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    .line 74
    sget-object v0, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/policy/LockAdminPolicy;

    sput-object v0, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    .line 76
    sget-object v0, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    sput-object v0, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter "infoId"
    .parameter "tag"
    .parameter "titleResId"
    .parameter "descriptionResId"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/motorola/motepm/Policy;->mInfoId:I

    .line 132
    iput-object p2, p0, Lcom/motorola/motepm/Policy;->mTag:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/motorola/motepm/Policy;->mTitleResId:I

    .line 134
    iput p4, p0, Lcom/motorola/motepm/Policy;->mDescriptionResId:I

    .line 135
    return-void
.end method

.method private static initPolicy(Lcom/motorola/motepm/Policy;)V
    .locals 12
    .parameter "policy"

    .prologue
    const/4 v11, 0x1

    .line 82
    sget-object v9, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->getInfoId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    instance-of v9, p0, Lcom/motorola/motepm/BooleanPolicy;

    if-eqz v9, :cond_0

    move-object v3, p0

    .line 85
    check-cast v3, Lcom/motorola/motepm/BooleanPolicy;

    .line 86
    .local v3, booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    sget-object v9, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/motorola/motepm/BooleanPolicy;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v3           #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->getBroadcastActions()[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, actions:[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 91
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 92
    .local v0, a:Ljava/lang/String;
    sget-object v9, Lcom/motorola/motepm/Policy;->POLICIES_BY_BROADCAST:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 93
    .local v8, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    if-nez v8, :cond_1

    .line 94
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .restart local v8       #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    sget-object v9, Lcom/motorola/motepm/Policy;->POLICIES_BY_BROADCAST:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v0           #a:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->getPackages()[Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, packages:[Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 104
    move-object v2, v7

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v5, v2

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, v2, v4

    .line 105
    .local v6, p:Ljava/lang/String;
    sget-object v9, Lcom/motorola/motepm/Policy;->POLICIES_BY_PACKAGE:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 106
    .restart local v8       #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    if-nez v8, :cond_3

    .line 107
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .restart local v8       #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    sget-object v9, Lcom/motorola/motepm/Policy;->POLICIES_BY_PACKAGE:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_3
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Ljava/lang/String;
    .end local v8           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/Policy;>;"
    :cond_4
    sget-object v9, Lcom/motorola/motepm/Policy;->POLICIES_BY_TAG:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method


# virtual methods
.method protected checkMainService()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 304
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v2

    .line 306
    .local v2, service:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    if-eqz v2, :cond_0

    .line 316
    :goto_0
    return v3

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 311
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v1, v4, v3

    .line 313
    .local v1, element:Ljava/lang/StackTraceElement;
    const-string v3, "MotorolaPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(): Main service not bound!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected disablePackages([Ljava/lang/String;)V
    .locals 1
    .parameter "packages"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->disablePackages([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected enablePackages([Ljava/lang/String;)V
    .locals 1
    .parameter "packages"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackages([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getActiveAdminForCaller(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .parameter "who"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Main service not bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ComponentName param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_1
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->getInfoId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 245
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_2

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ComponentName param is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_2
    return-object v0
.end method

.method protected getActiveAdminUnchecked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .locals 1
    .parameter "who"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    goto :goto_0
.end method

.method protected getActiveAdministrators()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected getActiveComponentNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuxiliaryService()Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/motorola/motepm/Policy;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    return-object v0
.end method

.method protected getBroadcastActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDebugTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 325
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 326
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 327
    .local v2, element:Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, className:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final getDescriptionResourceId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/motorola/motepm/Policy;->mDescriptionResId:I

    return v0
.end method

.method public final getInfoId()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/motorola/motepm/Policy;->mInfoId:I

    return v0
.end method

.method protected getMutex()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    .line 300
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/motorola/motepm/Policy;->mNotificationId:I

    return v0
.end method

.method protected getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/motorola/motepm/Policy;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleResourceId()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/motorola/motepm/Policy;->mTitleResId:I

    return v0
.end method

.method public onActiveAdminRemoved(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 166
    return-void
.end method

.method public onAuxiliaryServiceBound(Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 195
    return-void
.end method

.method public onAuxiliaryServiceUnbound()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 188
    return-void
.end method

.method public onMainServiceBound(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 191
    return-void
.end method

.method public readFromXml(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "admin"
    .parameter "parser"

    .prologue
    .line 201
    return-void
.end method

.method protected saveSettings()V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_0
.end method

.method protected sendPolicyChangedNotification(II)V
    .locals 2
    .parameter "titleResId"
    .parameter "detailsResId"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->checkMainService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->getNotificationId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(III)V

    goto :goto_0
.end method

.method public final setAuxiliaryServiceInstance(Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/motorola/motepm/Policy;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/Policy;->onAuxiliaryServiceBound(Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/motepm/Policy;->onAuxiliaryServiceUnbound()V

    goto :goto_0
.end method

.method public setNotificationId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 154
    iput p1, p0, Lcom/motorola/motepm/Policy;->mNotificationId:I

    .line 155
    return-void
.end method

.method public writeToXml(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .parameter "admin"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    return-void
.end method
