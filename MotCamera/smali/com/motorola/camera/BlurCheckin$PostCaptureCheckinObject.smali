.class Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;
.super Lcom/motorola/camera/BlurCheckin$CheckinObject;
.source "BlurCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCaptureCheckinObject"
.end annotation


# instance fields
.field private AUTOFOCUSUSED:Ljava/lang/String;

.field private BLUR_CHECKIN_VERSION:Ljava/lang/String;

.field private CAFFAILURE:Ljava/lang/String;

.field private EFFECT:Ljava/lang/String;

.field private EXPOSURE:Ljava/lang/String;

.field private FACEDETECTENABLED:Ljava/lang/String;

.field private FLASHFIREDONAUTO:Ljava/lang/String;

.field private FLASHMODE:Ljava/lang/String;

.field private FOCUSFAILURE:Ljava/lang/String;

.field private FOCUSLENGTH:Ljava/lang/String;

.field private FRONTCAMERAUSED:Ljava/lang/String;

.field private GEOTAGON:Ljava/lang/String;

.field private MICMUTE:Ljava/lang/String;

.field private MODE:Ljava/lang/String;

.field private NUMBEROFFACESDETECTED:Ljava/lang/String;

.field private ORIENTATION:Ljava/lang/String;

.field private RESOLUTION:Ljava/lang/String;

.field private SCENE:Ljava/lang/String;

.field private SHUTTERTONE:Ljava/lang/String;

.field private STORAGETYPE:Ljava/lang/String;

.field private TAPTOFOCUSCOUNT:Ljava/lang/String;

.field private TIMEOFPIC:Ljava/lang/String;

.field private TIMETOFOCUS:Ljava/lang/String;

.field private TIMETOSAVE:Ljava/lang/String;

.field private TIMETOSHUTTERCALLBACK:Ljava/lang/String;

.field private USECASE:Ljava/lang/String;

.field private VIDEODURATION:Ljava/lang/String;

.field private VOLKEYUSED:Ljava/lang/String;

.field private VOLUMEKEYFUNCTION:Ljava/lang/String;

.field private ZOOM:Ljava/lang/String;

.field private mCAFFailureStatus:Z

.field private mEffect:Ljava/lang/String;

.field private mExposure:Ljava/lang/String;

.field private mFlashFiredOnAuto:Z

.field private mFlashMode:Ljava/lang/String;

.field private mFocusFailureStatus:Z

.field private mFocusLength:Ljava/lang/String;

.field private mFocusTime:J

.field private mFrontCamera:Z

.field private mGeoTagOn:Ljava/lang/String;

.field private mLoadingFailed:Z

.field private mMode:Ljava/lang/String;

.field private mPicHour:Ljava/lang/String;

.field private mPicMinute:Ljava/lang/String;

.field private mPicOrientation:Ljava/lang/String;

.field private mPictureTime:Landroid/text/format/Time;

.field private mResolution:Ljava/lang/String;

.field private mSaveTime:J

.field private mScene:Ljava/lang/String;

.field private mShutterCallbackTime:J

.field private mShutterTone:Ljava/lang/String;

.field private mStorageType:Ljava/lang/String;

.field private mVideoDuration:J

.field private mVolKey:Z

.field private mVolumeKeyFunction:Ljava/lang/String;

.field private mZoom:I

.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/BlurCheckin;)V
    .locals 1
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .line 593
    const-string v0, "USECASE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->USECASE:Ljava/lang/String;

    .line 594
    const-string v0, "RESOLN"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->RESOLUTION:Ljava/lang/String;

    .line 595
    const-string v0, "GTAG"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->GEOTAGON:Ljava/lang/String;

    .line 596
    const-string v0, "VOLKEY"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->VOLUMEKEYFUNCTION:Ljava/lang/String;

    .line 597
    const-string v0, "EFFECT"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->EFFECT:Ljava/lang/String;

    .line 598
    const-string v0, "SCENE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->SCENE:Ljava/lang/String;

    .line 599
    const-string v0, "MODE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->MODE:Ljava/lang/String;

    .line 600
    const-string v0, "XPSR"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->EXPOSURE:Ljava/lang/String;

    .line 601
    const-string v0, "FLASHMODE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FLASHMODE:Ljava/lang/String;

    .line 602
    const-string v0, "ZOOM"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->ZOOM:Ljava/lang/String;

    .line 603
    const-string v0, "FOCTIME"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMETOFOCUS:Ljava/lang/String;

    .line 604
    const-string v0, "STRG"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->STORAGETYPE:Ljava/lang/String;

    .line 605
    const-string v0, "SVTIME"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMETOSAVE:Ljava/lang/String;

    .line 606
    const-string v0, "ORNT"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->ORIENTATION:Ljava/lang/String;

    .line 607
    const-string v0, "FOCFAIL"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FOCUSFAILURE:Ljava/lang/String;

    .line 608
    const-string v0, "CAFFAIL"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->CAFFAILURE:Ljava/lang/String;

    .line 609
    const-string v0, "ZSLTIME"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMETOSHUTTERCALLBACK:Ljava/lang/String;

    .line 610
    const-string v0, "VIDLNGTH"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->VIDEODURATION:Ljava/lang/String;

    .line 611
    const-string v0, "TAPTOFOC"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TAPTOFOCUSCOUNT:Ljava/lang/String;

    .line 612
    const-string v0, "AUTOFOC"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->AUTOFOCUSUSED:Ljava/lang/String;

    .line 613
    const-string v0, "MICMUTE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->MICMUTE:Ljava/lang/String;

    .line 614
    const-string v0, "SHTRTONE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->SHUTTERTONE:Ljava/lang/String;

    .line 615
    const-string v0, "VOLKEYUSED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->VOLKEYUSED:Ljava/lang/String;

    .line 616
    const-string v0, "FRNTCAM"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FRONTCAMERAUSED:Ljava/lang/String;

    .line 617
    const-string v0, "FACEDET"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FACEDETECTENABLED:Ljava/lang/String;

    .line 618
    const-string v0, "NUMFACEDET"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->NUMBEROFFACESDETECTED:Ljava/lang/String;

    .line 619
    const-string v0, "TIMEOFPIC"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMEOFPIC:Ljava/lang/String;

    .line 620
    const-string v0, "FLASHFIRED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FLASHFIREDONAUTO:Ljava/lang/String;

    .line 621
    const-string v0, "FOCLNGTH"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FOCUSLENGTH:Ljava/lang/String;

    .line 648
    const-string v0, "1.5"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    .line 654
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;)V

    return-void
.end method

.method private loadCameraPreferenceGroup()V
    .locals 6

    .prologue
    .line 810
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    if-nez v3, :cond_1

    .line 811
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Preference group is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const/4 v1, 0x0

    .line 816
    .local v1, preference:Lcom/motorola/camera/ListPreference;
    const/4 v2, 0x0

    .line 822
    .local v2, sliderPreference:Lcom/motorola/camera/SliderPreference;
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_camera_resolution_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 824
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_3

    .line 825
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 826
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mResolution:Ljava/lang/String;

    .line 828
    :cond_2
    const/4 v1, 0x0

    .line 831
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_record_location_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 833
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_5

    .line 834
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 835
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mGeoTagOn:Ljava/lang/String;

    .line 837
    :cond_4
    const/4 v1, 0x0

    .line 840
    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_vol_func_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 842
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_7

    .line 843
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 844
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolumeKeyFunction:Ljava/lang/String;

    .line 846
    :cond_6
    const/4 v1, 0x0

    .line 849
    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_camera_effect_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 851
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_9

    .line 852
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 853
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mEffect:Ljava/lang/String;

    .line 855
    :cond_8
    const/4 v1, 0x0

    .line 858
    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_camera_scene_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 860
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_b

    .line 861
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 862
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mScene:Ljava/lang/String;

    .line 864
    :cond_a
    const/4 v1, 0x0

    .line 867
    :cond_b
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_camera_mode_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 869
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_d

    .line 870
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 871
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mMode:Ljava/lang/String;

    .line 873
    :cond_c
    const/4 v1, 0x0

    .line 876
    :cond_d
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_exposure_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    .end local v2           #sliderPreference:Lcom/motorola/camera/SliderPreference;
    check-cast v2, Lcom/motorola/camera/SliderPreference;

    .line 878
    .restart local v2       #sliderPreference:Lcom/motorola/camera/SliderPreference;
    if-eqz v2, :cond_f

    .line 879
    invoke-virtual {v2}, Lcom/motorola/camera/SliderPreference;->getCurrentValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mExposure:Ljava/lang/String;

    .line 880
    invoke-virtual {v2}, Lcom/motorola/camera/SliderPreference;->getCurrentValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 881
    invoke-virtual {v2}, Lcom/motorola/camera/SliderPreference;->getCurrentValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mExposure:Ljava/lang/String;

    .line 883
    :cond_e
    const/4 v2, 0x0

    .line 886
    :cond_f
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_camera_flash_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 888
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_10

    .line 889
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 890
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashMode:Ljava/lang/String;

    .line 894
    :cond_10
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ZoomManager;->getZoomValue()I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mZoom:I

    .line 896
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mTimeToFocus:J
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2200(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusTime:J

    .line 898
    const-string v3, "PORT"

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicOrientation:Ljava/lang/String;

    .line 899
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2300(Lcom/motorola/camera/BlurCheckin;)I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_11

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2300(Lcom/motorola/camera/BlurCheckin;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_12

    .line 900
    :cond_11
    const-string v3, "LAND"

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicOrientation:Ljava/lang/String;

    .line 903
    :cond_12
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_storage_location_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 905
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_13

    .line 907
    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mStorageType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_13
    :goto_1
    invoke-static {}, Lcom/motorola/camera/FocusManager;->getInstance()Lcom/motorola/camera/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/FocusManager;->getFocusFailureStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusFailureStatus:Z

    .line 915
    invoke-static {}, Lcom/motorola/camera/FocusManager;->getInstance()Lcom/motorola/camera/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/FocusManager;->getCAFFailureStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mCAFFailureStatus:Z

    .line 916
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mTimeToShutterCallback:J
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2400(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterCallbackTime:J

    .line 918
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->isShutterToneForced()Z

    move-result v3

    if-nez v3, :cond_0

    .line 919
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_shutter_tone_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 921
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_0

    .line 922
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 923
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterTone:Ljava/lang/String;

    goto/16 :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while setting storage location:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadVideoPreferenceGroup()V
    .locals 6

    .prologue
    .line 931
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    if-nez v3, :cond_1

    .line 932
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Preference group is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    const/4 v1, 0x0

    .line 937
    .local v1, preference:Lcom/motorola/camera/ListPreference;
    const/4 v2, 0x0

    .line 939
    .local v2, sliderPreference:Lcom/motorola/camera/SliderPreference;
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_video_resolution_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 941
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_3

    .line 942
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 943
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mResolution:Ljava/lang/String;

    .line 945
    :cond_2
    const/4 v1, 0x0

    .line 948
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_record_location_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 950
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_5

    .line 951
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 952
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mGeoTagOn:Ljava/lang/String;

    .line 954
    :cond_4
    const/4 v1, 0x0

    .line 957
    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_vol_func_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 959
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_7

    .line 960
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 961
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolumeKeyFunction:Ljava/lang/String;

    .line 963
    :cond_6
    const/4 v1, 0x0

    .line 966
    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_video_effect_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 968
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_9

    .line 969
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 970
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mEffect:Ljava/lang/String;

    .line 972
    :cond_8
    const/4 v1, 0x0

    .line 975
    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_video_scene_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 977
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_b

    .line 978
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 979
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mScene:Ljava/lang/String;

    .line 981
    :cond_a
    const/4 v1, 0x0

    .line 984
    :cond_b
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_video_mode_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 986
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_d

    .line 987
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 988
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mMode:Ljava/lang/String;

    .line 990
    :cond_c
    const/4 v1, 0x0

    .line 993
    :cond_d
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_exposure_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    .end local v2           #sliderPreference:Lcom/motorola/camera/SliderPreference;
    check-cast v2, Lcom/motorola/camera/SliderPreference;

    .line 995
    .restart local v2       #sliderPreference:Lcom/motorola/camera/SliderPreference;
    if-eqz v2, :cond_e

    .line 996
    invoke-virtual {v2}, Lcom/motorola/camera/SliderPreference;->getCurrentValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mExposure:Ljava/lang/String;

    .line 997
    const/4 v2, 0x0

    .line 1000
    :cond_e
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_video_flash_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 1002
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_10

    .line 1003
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1004
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashMode:Ljava/lang/String;

    .line 1006
    :cond_f
    const/4 v1, 0x0

    .line 1009
    :cond_10
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ZoomManager;->getZoomValue()I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mZoom:I

    .line 1011
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mTimeToSave:J
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2500(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mSaveTime:J

    .line 1013
    const-string v3, "PORT"

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicOrientation:Ljava/lang/String;

    .line 1014
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2300(Lcom/motorola/camera/BlurCheckin;)I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_11

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2300(Lcom/motorola/camera/BlurCheckin;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_12

    .line 1015
    :cond_11
    const-string v3, "LAND"

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicOrientation:Ljava/lang/String;

    .line 1018
    :cond_12
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_storage_location_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 1020
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_13

    .line 1022
    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mStorageType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :cond_13
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCapturedDuration:J
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$2600(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVideoDuration:J

    .line 1031
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->isShutterToneForced()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v3}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_shutter_tone_key"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 1034
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_0

    .line 1035
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1036
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterTone:Ljava/lang/String;

    goto/16 :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while setting storage location:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1043
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mTimeToFocus:J
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/BlurCheckin;->access$2202(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1044
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I
    invoke-static {v0, v3}, Lcom/motorola/camera/BlurCheckin;->access$2302(Lcom/motorola/camera/BlurCheckin;I)I

    .line 1045
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mTimeToShutterCallback:J
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/BlurCheckin;->access$2402(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1046
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mTimeToSave:J
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/BlurCheckin;->access$2502(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1047
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mCapturedDuration:J
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/BlurCheckin;->access$2602(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1048
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedVolKeyUsedObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/camera/BlurCheckin;->mVolumeKeyUsed:Z
    invoke-static {v0, v2}, Lcom/motorola/camera/BlurCheckin;->access$1502(Lcom/motorola/camera/BlurCheckin;Z)Z

    .line 1050
    monitor-exit v1

    .line 1052
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkinValues(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 744
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 745
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checking in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mLoadingFailed:Z

    if-nez v1, :cond_2

    .line 750
    :try_start_0
    new-instance v0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$800()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 752
    .local v0, e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->USECASE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->RESOLUTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->GEOTAGON:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mGeoTagOn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->VOLUMEKEYFUNCTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolumeKeyFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->EFFECT:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mEffect:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->SCENE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mScene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->MODE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->EXPOSURE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mExposure:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FLASHMODE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->ZOOM:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mZoom:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;I)V

    .line 762
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMETOFOCUS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 763
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->STORAGETYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mStorageType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMETOSAVE:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mSaveTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 765
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->ORIENTATION:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicOrientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FOCUSFAILURE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusFailureStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 767
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->CAFFAILURE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mCAFFailureStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 768
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMETOSHUTTERCALLBACK:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterCallbackTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 769
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->VIDEODURATION:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVideoDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 770
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TAPTOFOCUSCOUNT:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mTapToFocusCount:I
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1800(Lcom/motorola/camera/BlurCheckin;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;I)V

    .line 771
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->AUTOFOCUSUSED:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mAutoFocusModeUsed:Z
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1900(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 772
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->MICMUTE:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isMicrophoneMute()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 773
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->SHUTTERTONE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterTone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->VOLKEYUSED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolKey:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 775
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FRONTCAMERAUSED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFrontCamera:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 776
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FACEDETECTENABLED:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mFacDetectEnabled:Z
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$2000(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 777
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->NUMBEROFFACESDETECTED:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mNumFacesDetected:I
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$2100(Lcom/motorola/camera/BlurCheckin;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;I)V

    .line 778
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FLASHFIREDONAUTO:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashFiredOnAuto:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 779
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->TIMEOFPIC:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->FOCUSLENGTH:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusLength:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v0           #e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 790
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checked in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_1
    return-void

    .line 786
    :cond_2
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initializeValues()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 657
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 658
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializing values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mResolution:Ljava/lang/String;

    .line 662
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mGeoTagOn:Ljava/lang/String;

    .line 663
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolumeKeyFunction:Ljava/lang/String;

    .line 664
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mEffect:Ljava/lang/String;

    .line 665
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mScene:Ljava/lang/String;

    .line 666
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mMode:Ljava/lang/String;

    .line 667
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mExposure:Ljava/lang/String;

    .line 668
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashMode:Ljava/lang/String;

    .line 669
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterTone:Ljava/lang/String;

    .line 670
    iput v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mZoom:I

    .line 671
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mLoadingFailed:Z

    .line 672
    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusTime:J

    .line 673
    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterCallbackTime:J

    .line 674
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mCAFFailureStatus:Z

    .line 675
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusFailureStatus:Z

    .line 676
    iput-wide v3, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVideoDuration:J

    .line 677
    const-string v0, "INITIALIZED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mShutterTone:Ljava/lang/String;

    .line 678
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolKey:Z

    .line 679
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mLoadingFailed:Z

    .line 680
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFrontCamera:Z

    .line 681
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashFiredOnAuto:Z

    .line 682
    const-string v0, "0.0"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFocusLength:Ljava/lang/String;

    .line 684
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 685
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialized values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_1
    return-void
.end method

.method public loadValues()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 690
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 691
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedPreferenceGroupObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1200(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 696
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Preference group is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mLoadingFailed:Z

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 701
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mUseCase is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mLoadingFailed:Z

    .line 705
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mLoadingFailed:Z

    if-nez v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 707
    invoke-direct {p0}, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->loadCameraPreferenceGroup()V

    .line 713
    :cond_3
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedVolKeyUsedObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 716
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mVolumeKeyUsed:Z
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1500(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolKey:Z

    .line 717
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 719
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mFrontCameraUsed:Z
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1600(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFrontCamera:Z

    .line 721
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPictureTime:Landroid/text/format/Time;

    .line 722
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPictureTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 723
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPictureTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicHour:Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPictureTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicMinute:Ljava/lang/String;

    .line 725
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPictureTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-ge v0, v3, :cond_4

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicHour:Ljava/lang/String;

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPictureTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    if-ge v0, v3, :cond_5

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicMinute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mPicMinute:Ljava/lang/String;

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 733
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mLowLight:Z
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1700(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashFiredOnAuto:Z

    .line 736
    :cond_6
    invoke-direct {p0}, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->resetValues()V

    .line 738
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 739
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loaded values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_7
    return-void

    .line 709
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Camcorder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    invoke-direct {p0}, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->loadVideoPreferenceGroup()V

    goto/16 :goto_0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 717
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public printValues()V
    .locals 3

    .prologue
    .line 796
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 797
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseCase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mResolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGeoTagOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mGeoTagOn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeKeyFunction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mVolumeKeyFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mScene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExposure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mExposure:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlashMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    return-void
.end method
