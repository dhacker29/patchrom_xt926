.class Lcom/motorola/camera/ui/v2/UserFeedbackPopup$2;
.super Ljava/lang/Object;
.source "UserFeedbackPopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->initialize(Lcom/motorola/camera/IconListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UserFeedbackPopup;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/UserFeedbackPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$2;->this$0:Lcom/motorola/camera/ui/v2/UserFeedbackPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 91
    new-instance v0, Lcom/motorola/camera/PreferenceSettings;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$2;->this$0:Lcom/motorola/camera/ui/v2/UserFeedbackPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreferenceSettings;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, pref:Lcom/motorola/camera/PreferenceSettings;
    invoke-virtual {v0}, Lcom/motorola/camera/PreferenceSettings;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_feedback_hdr_dismissed"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method
