.class Lcom/motorola/camera/ui/v2/UserFeedbackPopup$1;
.super Ljava/lang/Object;
.source "UserFeedbackPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 73
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$1;->this$0:Lcom/motorola/camera/ui/v2/UserFeedbackPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.genie.EXTERNAL_APP_HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "external_app_launch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v1, "topic_key"

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$1;->this$0:Lcom/motorola/camera/ui/v2/UserFeedbackPopup;

    #getter for: Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->mPreference:Lcom/motorola/camera/IconListPreference;
    invoke-static {v2}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->access$000(Lcom/motorola/camera/ui/v2/UserFeedbackPopup;)Lcom/motorola/camera/IconListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/IconListPreference;->getFeedbackTopicId()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UserFeedbackPopup$1;->this$0:Lcom/motorola/camera/ui/v2/UserFeedbackPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/UserFeedbackPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
