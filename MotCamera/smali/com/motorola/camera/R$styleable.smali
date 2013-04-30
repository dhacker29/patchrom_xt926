.class public final Lcom/motorola/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I = null

.field public static final CameraPreference_summary:I = 0x1

.field public static final CameraPreference_title:I = 0x0

.field public static final CaptureButton:[I = null

.field public static final CaptureButton_mode:I = 0x0

.field public static final CustomToolbar:[I = null

.field public static final CustomToolbar_android_allowSingleTap:I = 0x3

.field public static final CustomToolbar_android_animateOnClick:I = 0x6

.field public static final CustomToolbar_android_bottomOffset:I = 0x1

.field public static final CustomToolbar_android_content:I = 0x5

.field public static final CustomToolbar_android_handle:I = 0x4

.field public static final CustomToolbar_android_orientation:I = 0x0

.field public static final CustomToolbar_android_topOffset:I = 0x2

.field public static final GenericSliderSettingPopup:[I = null

.field public static final GenericSliderSettingPopup_sliderLayout:I = 0x0

.field public static final IconListPreference:[I = null

.field public static final IconListPreference_feedbackMessage:I = 0x6

.field public static final IconListPreference_feedbackTitle:I = 0x5

.field public static final IconListPreference_feedbackTopicId:I = 0x7

.field public static final IconListPreference_icons:I = 0x3

.field public static final IconListPreference_images:I = 0x4

.field public static final IconListPreference_inUseIcon:I = 0x2

.field public static final IconListPreference_notInUseIcon:I = 0x1

.field public static final IconListPreference_singleIcon:I = 0x0

.field public static final ListPreference:[I = null

.field public static final ListPreference_defaultValue:I = 0x1

.field public static final ListPreference_entries:I = 0x4

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_extraValues:I = 0x3

.field public static final ListPreference_key:I = 0x0

.field public static final SliderPreference:[I = null

.field public static final SliderPreference_sliderDefaultValue:I = 0x3

.field public static final SliderPreference_sliderKey:I = 0x0

.field public static final SliderPreference_sliderMaxValue:I = 0x2

.field public static final SliderPreference_sliderMinValue:I = 0x1

.field public static final SliderPreference_sliderScale:I = 0x5

.field public static final SliderPreference_sliderStep:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 798
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/R$styleable;->CameraPreference:[I

    .line 839
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/motorola/camera/R$styleable;->CaptureButton:[I

    .line 887
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/R$styleable;->CustomToolbar:[I

    .line 943
    new-array v0, v3, [I

    const v1, 0x7f010016

    aput v1, v0, v2

    sput-object v0, Lcom/motorola/camera/R$styleable;->GenericSliderSettingPopup:[I

    .line 980
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/motorola/camera/R$styleable;->IconListPreference:[I

    .line 1082
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/motorola/camera/R$styleable;->ListPreference:[I

    .line 1161
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/motorola/camera/R$styleable;->SliderPreference:[I

    return-void

    .line 798
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data

    .line 887
    :array_1
    .array-data 0x4
        0xc4t 0x0t 0x1t 0x1t
        0x57t 0x2t 0x1t 0x1t
        0x58t 0x2t 0x1t 0x1t
        0x59t 0x2t 0x1t 0x1t
        0x5at 0x2t 0x1t 0x1t
        0x5bt 0x2t 0x1t 0x1t
        0x5ct 0x2t 0x1t 0x1t
    .end array-data

    .line 980
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data

    .line 1082
    :array_3
    .array-data 0x4
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1161
    :array_4
    .array-data 0x4
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
