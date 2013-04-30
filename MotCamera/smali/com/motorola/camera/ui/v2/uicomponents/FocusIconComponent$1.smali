.class synthetic Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;
.super Ljava/lang/Object;
.source "FocusIconComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$motorola$camera$ui$v2$uicomponents$FocusIconComponent$FOCUS_ICON_UPDATE_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->values()[Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;->$SwitchMap$com$motorola$camera$ui$v2$uicomponents$FocusIconComponent$FOCUS_ICON_UPDATE_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;->$SwitchMap$com$motorola$camera$ui$v2$uicomponents$FocusIconComponent$FOCUS_ICON_UPDATE_TYPE:[I

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$1;->$SwitchMap$com$motorola$camera$ui$v2$uicomponents$FocusIconComponent$FOCUS_ICON_UPDATE_TYPE:[I

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_VISIBILITY_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
