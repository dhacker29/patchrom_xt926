.class Lcom/android/server/TelephonyRegistry$DataStateNotification;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataStateNotification"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public isDataConnectivityPossible:Z

.field public linkCapabilities:Landroid/net/LinkCapabilities;

.field public linkProperties:Landroid/net/LinkProperties;

.field public networkType:I

.field public reason:Ljava/lang/String;

.field public roaming:Z

.field public state:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 2
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TelephonyRegistry"

    const-string v1, "new DataStateNotification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p8}, Lcom/android/server/TelephonyRegistry$DataStateNotification;->setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    return-void
.end method

.method private setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 0
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    iput p1, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->state:I

    iput-boolean p2, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->isDataConnectivityPossible:Z

    iput-object p3, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->reason:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->apn:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->linkProperties:Landroid/net/LinkProperties;

    iput-object p6, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->linkCapabilities:Landroid/net/LinkCapabilities;

    iput p7, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->networkType:I

    iput-boolean p8, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->roaming:Z

    return-void
.end method


# virtual methods
.method public checkAndUpdateValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)Z
    .locals 2
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->isDataConnectivityPossible:Z

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->state:I

    if-ne p1, v0, :cond_0

    const-string v0, "TelephonyRegistry"

    const-string v1, "toBeNotified = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "TelephonyRegistry"

    const-string v1, "update dataStateNotification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p8}, Lcom/android/server/TelephonyRegistry$DataStateNotification;->setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method
