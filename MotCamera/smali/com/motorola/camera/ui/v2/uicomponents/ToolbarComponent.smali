.class public Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "ToolbarComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;
.implements Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;
.implements Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;
.implements Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOtherKeys:[Ljava/lang/String;

.field private mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

.field private mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

.field private mToolbarButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 4
    .parameter "root"
    .parameter "parent"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 41
    const-string v3, "ToolbarComponent"

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->TAG:Ljava/lang/String;

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    .line 45
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 57
    const v3, 0x7f08005c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;

    .line 58
    .local v2, other:Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;
    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/OtherSettingsPopup$Listener;)V

    .line 59
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 60
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const v3, 0x7f08005d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/IndicatorButton;

    .line 63
    .local v0, button:Lcom/motorola/camera/ui/v2/IndicatorButton;
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;)V

    .line 64
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 65
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const v3, 0x7f08005e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/motorola/camera/ui/v2/IndicatorButton;
    check-cast v0, Lcom/motorola/camera/ui/v2/IndicatorButton;

    .line 67
    .restart local v0       #button:Lcom/motorola/camera/ui/v2/IndicatorButton;
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;)V

    .line 68
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 69
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const v3, 0x7f08005f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/motorola/camera/ui/v2/IndicatorButton;
    check-cast v0, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;

    .line 71
    .restart local v0       #button:Lcom/motorola/camera/ui/v2/IndicatorButton;
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;)V

    .line 72
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 73
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const v3, 0x7f080060

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;

    .line 75
    .local v1, buttonS:Lcom/motorola/camera/ui/v2/SliderIndicatorButton;
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->setListener(Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;)V

    .line 76
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setEnabled(Z)V

    .line 78
    const v3, 0x7f080061

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/motorola/camera/ui/v2/IndicatorButton;
    check-cast v0, Lcom/motorola/camera/ui/v2/IndicatorButton;

    .line 79
    .restart local v0       #button:Lcom/motorola/camera/ui/v2/IndicatorButton;
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setSettingChangedListener(Lcom/motorola/camera/ui/v2/IndicatorButton$OnSettingChangeListener;)V

    .line 80
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 81
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const v3, 0x7f080059

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->setOnDrawerOpenListener(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;)V

    .line 86
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->setOnDrawerCloseListener(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;)V

    .line 87
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->drawWithoutAnimation()V

    .line 90
    :cond_0
    return-void
.end method

.method private loadCameraPreferenceGroup()V
    .locals 5

    .prologue
    .line 100
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;

    const v2, 0x7f020068

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->setPreference(ILcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/IndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_camera_effect_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;)V

    .line 104
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/IndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_camera_scene_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, preference:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/ListPreference;>;"
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_camera_mode_timer_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_camera_mode_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;Ljava/util/ArrayList;)V

    .line 108
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_exposure_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/SliderPreference;

    const v3, 0x7f030007

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->setPreference(Lcom/motorola/camera/SliderPreference;I)V

    .line 109
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/IndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_camera_flash_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;)V

    .line 110
    invoke-static {}, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;->getInstance()Lcom/motorola/camera/ui/v2/UserFeedbackObserver;

    move-result-object v1

    const-string v2, "pref_camera_mode_key"

    invoke-virtual {v1, p0, v2}, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;->addListeners(Lcom/motorola/camera/Notifier$Listener;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadVideoPreferenceGroup()V
    .locals 5

    .prologue
    .line 114
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    if-nez v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;

    const v2, 0x7f020068

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/camera/ui/v2/OtherSettingIndicatorButton;->setPreference(ILcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/IndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_video_effect_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;)V

    .line 118
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/IndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_video_scene_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, preference:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/ListPreference;>;"
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v2, "pref_video_mode_timelapse_key"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_video_mode_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/v2/MenuIndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;Ljava/util/ArrayList;)V

    .line 122
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_exposure_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/SliderPreference;

    const v3, 0x7f030007

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->setPreference(Lcom/motorola/camera/SliderPreference;I)V

    .line 124
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/IndicatorButton;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v3, "pref_video_flash_key"

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/IndicatorButton;->setPreference(Lcom/motorola/camera/ListPreference;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->resetFeedback()V

    .line 234
    return-void
.end method

.method public disableClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;

    .line 166
    .local v0, b:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setEnabled(Z)V

    goto :goto_0

    .line 168
    .end local v0           #b:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
    :cond_0
    return-void
.end method

.method public enableClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;

    .line 174
    .local v0, b:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setEnabled(Z)V

    goto :goto_0

    .line 176
    .end local v0           #b:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
    :cond_0
    return-void
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 202
    const v0, 0x7f080058

    return v0
.end method

.method public onBackKeyPressed()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->backKeyPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 214
    return-void
.end method

.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/IndicatorButton;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/IndicatorButton;->onDrawerClosed()V

    .line 229
    return-void
.end method

.method public onDrawerOpened()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getHandle()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    .local v0, mHandle:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 223
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 224
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/IndicatorButton;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/IndicatorButton;->onDrawerOpened()V

    .line 225
    return-void
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 144
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mOtherKeys:[Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/motorola/camera/PreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->loadCameraPreferenceGroup()V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->enableClick()V

    .line 155
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->loadVideoPreferenceGroup()V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;I)V
    .locals 7
    .parameter "key"
    .parameter "index"

    .prologue
    .line 180
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v0, Lcom/motorola/camera/Event;

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->SETTINGS_CHANGE:Lcom/motorola/camera/Event$ACTION;

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Ljava/lang/String;IJ)V

    invoke-interface {v6, v0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 181
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;IJ)V
    .locals 7
    .parameter "key"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 159
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v0, Lcom/motorola/camera/Event;

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->SETTINGS_CHANGE:Lcom/motorola/camera/Event$ACTION;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Ljava/lang/String;IJ)V

    invoke-interface {v6, v0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 160
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;F)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "exposure"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 191
    const-string v1, "pref_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->SETTINGS_CHANGE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 193
    return-void
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2
    .parameter "type"
    .parameter "bundle"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->isOpened()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->feedbackAvailable(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 218
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 133
    return-void
.end method

.method public rotate(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbarButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;

    .line 95
    .local v0, button:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setOrientation(I)V

    goto :goto_0

    .line 97
    .end local v0           #button:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
    :cond_0
    return-void
.end method

.method public toggleOpen()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;->mToolbar:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->toggle()V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/AppSettings;->removeOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 138
    invoke-static {}, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;->getInstance()Lcom/motorola/camera/ui/v2/UserFeedbackObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/UserFeedbackObserver;->removeListeners(Lcom/motorola/camera/Notifier$Listener;)V

    .line 139
    return-void
.end method
