.class Lcom/motorola/camera/AppSettings$2;
.super Ljava/lang/Object;
.source "AppSettings.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/AppSettings;->showRecordLocationEula()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/AppSettings;


# direct methods
.method constructor <init>(Lcom/motorola/camera/AppSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/motorola/camera/AppSettings$2;->this$0:Lcom/motorola/camera/AppSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/motorola/camera/ui/v2/AlertPopup;)V
    .locals 3
    .parameter "popup"

    .prologue
    .line 1445
    invoke-static {}, Lcom/motorola/camera/AppSettings;->access$100()Lcom/motorola/camera/PreferenceGroup;

    move-result-object v1

    const-string v2, "pref_record_location_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 1447
    .local v0, geoPref:Lcom/motorola/camera/ListPreference;
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ListPreference;->setValueIndex(I)V

    .line 1448
    iget-object v1, p0, Lcom/motorola/camera/AppSettings$2;->this$0:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceChanged(Ljava/lang/String;)V

    .line 1449
    return-void
.end method
