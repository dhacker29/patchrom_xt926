#
# Makefile for razr HD
#

# The original zip file, MUST be specified by each product
local-zip-file     := vanquish_deodexed_9.8.1Q-62_VQW_MR-2.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
local-out-zip-file := MIUI_vanquish.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := MotCamera

local-modified-jars := 

local-miui-modified-apps := MiuiHome Settings Phone ThemeManager

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

# All apks from MIUI
local-miui-removed-apps  := LatinIME MediaProvider

# All apps need to be reserved from original ZIP file
local-phone-apps := ApplicationsProvider BlurUpdater_VZW CertInstaller Cmas \
    DefaultContainerService DlnaSystemService DockService DrmProvider ExtDispService FaceLock \
    IlsVzW KeyChain LatinIME LatinImeDictionaryPack LiveWallpapers LiveWallpapersPicker \
    MediaProvider MotCamera MotoDockHelperService MotorolaSettingsProvider MotionTrigger \
    OmaDrmService OneTimeInitializer QualcommSettings Setup SmartActions SmartActionFW \
    SmartActionMFW SmartCarDock SmartDock UserDictionaryProvider VisualizationWallpapers VoiceSearch \
    appdirectedsmspermission AudioEffects VZWAPNLib vzwapnpermission VZWAPNService \
    BackupRestoreConfirmation


# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

local-rewrite-skia-lib:= false

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	#cp other/default.prop $(ZIP_DIR)/system/default.prop

	#@echo update bootanimation
	#rm $(ZIP_DIR)/system/bin/bootanimation
	#cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/
	#cp other/system_xbin/* $(ZIP_DIR)/system/xbin/

	@echo add system app
	cp other/system_app/* $(ZIP_DIR)/system/app/

	@echo delete redundant files
	rm -rf $(ZIP_DIR)/system/tts
	rm -rf $(ZIP_DIR)/system/vendor/app
	rm -rf $(ZIP_DIR)/system/media/KnowYourDevice
	#rm -r $(ZIP_DIR)/system/bin/su

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) 
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip

#enter recovery
#echo 1 > /data/.recovery_mode ; sync ; reboot ;

