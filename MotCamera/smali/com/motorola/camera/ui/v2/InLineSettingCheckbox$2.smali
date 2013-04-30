.class Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$2;
.super Ljava/lang/Object;
.source "InLineSettingCheckbox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 55
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$2;->this$0:Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox$2;->this$0:Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/v2/InLineSettingCheckbox;->checkedChanged(Z)V

    .line 60
    return-void
.end method
