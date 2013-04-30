.class Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$1;
.super Ljava/lang/Object;
.source "InLineSettingCheckbox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$1;->this$0:Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$1;->this$0:Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 53
    return-void
.end method
