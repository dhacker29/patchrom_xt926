.class Lcom/motorola/camera/AppSettings$1;
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
    .line 1422
    iput-object p1, p0, Lcom/motorola/camera/AppSettings$1;->this$0:Lcom/motorola/camera/AppSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/motorola/camera/ui/v2/AlertPopup;)V
    .locals 4
    .parameter "popup"

    .prologue
    .line 1428
    iget-object v2, p0, Lcom/motorola/camera/AppSettings$1;->this$0:Lcom/motorola/camera/AppSettings;

    #getter for: Lcom/motorola/camera/AppSettings;->mPrefSettings:Lcom/motorola/camera/PreferenceSettings;
    invoke-static {v2}, Lcom/motorola/camera/AppSettings;->access$000(Lcom/motorola/camera/AppSettings;)Lcom/motorola/camera/PreferenceSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/PreferenceSettings;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1429
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_record_location_key"

    const-string v3, "true"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1430
    const-string v2, "pref_record_location_eula_key"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1432
    iget-object v2, p0, Lcom/motorola/camera/AppSettings$1;->this$0:Lcom/motorola/camera/AppSettings;

    const-string v3, "pref_storage_location_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/AppSettings;->dispatchOnPreferenceChanged(Ljava/lang/String;)V

    .line 1433
    iget-object v2, p0, Lcom/motorola/camera/AppSettings$1;->this$0:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isLocationProviderEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1435
    invoke-static {}, Lcom/motorola/camera/Util;->launchSettingsPopup()Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;

    move-result-object v1

    .line 1436
    .local v1, popupData:Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 1438
    .end local v1           #popupData:Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;
    :cond_0
    return-void
.end method
