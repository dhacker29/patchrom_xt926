.class Lcom/motorola/datacollection/DataCollectionRegistry$Record;
.super Ljava/lang/Object;
.source "DataCollectionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/datacollection/DataCollectionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Lcom/motorola/datacollection/IDataCollectionListener;

.field dw:Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/datacollection/DataCollectionRegistry$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/datacollection/DataCollectionRegistry$Record;-><init>()V

    return-void
.end method
