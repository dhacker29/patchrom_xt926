.class Lcom/motorola/camera/ui/v2/InLineSettingSpinner$1;
.super Ljava/lang/Object;
.source "InLineSettingSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/InLineSettingSpinner;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/InLineSettingSpinner;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner$1;->this$0:Lcom/motorola/camera/ui/v2/InLineSettingSpinner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingSpinner$1;->this$0:Lcom/motorola/camera/ui/v2/InLineSettingSpinner;

    #calls: Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->showDialog()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/InLineSettingSpinner;->access$000(Lcom/motorola/camera/ui/v2/InLineSettingSpinner;)V

    .line 72
    return-void
.end method
