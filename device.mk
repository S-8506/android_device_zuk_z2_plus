#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get non-open-source specific aspects
$(call inherit-product, vendor/zuk/z2_plus/z2_plus-vendor.mk)


# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Inherit from msm8996-common
$(call inherit-product, device/zuk/msm8996-common/msm8996.mk)



PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/video.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/video.d/apparmor-easyprof-ubuntu_android \
     $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/graphics.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/graphics.d/apparmor-easyprof-ubuntu_android \



	
# ubuntu overlay
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/device-hacks.conf:system/halium/etc/init/device-hacks.conf \
    $(LOCAL_PATH)/ubuntu/apparmor.d/abstractions/base:system/halium/etc/apparmor.d/abstractions/base \
    $(LOCAL_PATH)/ubuntu/z2_plus.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/z2_plus.conf:system/halium/etc/ubuntu-touch-session.d/z2_plus.conf \
    $(LOCAL_PATH)/ubuntu/servicemanager.rc:system/etc/init/servicemanager.rc \
    $(LOCAL_PATH)/ubuntu/apparmor.d/local/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/adbd.conf:system/ubuntu/etc/init/adbd.conf \
    $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf \
    $(LOCAL_PATH)/ubuntu/config.xml:system/ubuntu/usr/share/repowerd/device-configs/config-zuk.xml \
    $(LOCAL_PATH)/ubuntu/config.xml:system/ubuntu/usr/share/repowerd/device-configs/config-z2_plus.xml \
    $(LOCAL_PATH)/ubuntu/init_setup_first_boot.sh:system/halium/var/lib/lxc/android/pre-start.d/init_setup_first_boot.sh \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/ubuntu/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/anbox-tool:system/halium/usr/bin/anbox-tool \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa \
    $(LOCAL_PATH)/ubuntu/touch-symlinks.conf:system/halium/etc/init/touch-symlinks.conf \
    $(LOCAL_PATH)/ubuntu/start-videoplayback.conf:system/halium/etc/init/start-videoplayback.conf \
    $(LOCAL_PATH)/ubuntu/unblock_wakelock.sh:system/etc/unblock_wakelock.sh \
    $(LOCAL_PATH)/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-default.xml \
    $(LOCAL_PATH)/ubuntu/environment:system/halium/etc/environment \
    $(LOCAL_PATH)/ubuntu/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstandroidmedia.so:system/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstandroidmedia.so \
    $(LOCAL_PATH)/ubuntu/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstmirsink.so:system/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstmirsink.so \
    $(LOCAL_PATH)/ubuntu/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstandroidmedia.so:system/ubuntu/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstandroidmedia.so \
    $(LOCAL_PATH)/ubuntu/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstmirsink.so:system/ubuntu/usr/lib/arm-linux-gnueabihf/gstreamer-1.0/libgstmirsink.so  \
   $(LOCAL_PATH)/ubuntu/70-z2_plus.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/70-z2_plus.rules:system/halium/usr/lib/lxc-android-config/70-android.rules \
    $(LOCAL_PATH)/ubuntu/70-z2_plus.rules:system/halium/usr/lib/lxc-android-config/70-z2_plus.rules \
    $(LOCAL_PATH)/ubuntu/70-z2_plus.rules:system/halium/etc/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/hciattach:system/bin/hciattach_rome \
    $(LOCAL_PATH)/ubuntu/bluetooth/bluetooth-touch-android.conf:system/halium/etc/init/bluetooth-touch-android.conf 
#    $(LOCAL_PATH)/ubuntu/wlan_restart.py:system/halium/usr/share/wlan_restart/wlan_restart.py 






   
#Fix sensors	x
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/vendor/etc/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf	\
	$(LOCAL_PATH)/rootdir/vendor/etc/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf
	
# Camera Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/etc/camera/msm8996_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8996_camera.xml \
    $(LOCAL_PATH)/rootdir/vendor/etc/camera/s5k2m8sx_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k2m8sx_chromatix.xml 



#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Bluetooth_cal.acdb:system/etc/acdbdata/#Bluetooth_cal.acdb \
#    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/General_cal.acdb:system/etc/acdbdata/General_cal.acdb \
#    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Global_cal.acdb:system/etc/acdbdata/Global_cal.acdb \
#    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Handset_cal.acdb:system/etc/acdbdata/Handset_cal.acdb \
#    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Hdmi_cal.acdb:system/etc/acdbdata/Hdmi_cal.acdb \
#    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Headset_cal.acdb:system/etc/acdbdata/Headset_cal.acdb \
#    $(LOCAL_PATH)/rootdir/vendor/etc/acdbdata/Speaker_cal.acdb:system/etc/acdbdata/Speaker_cal.acdb
	
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/ubuntu/libs/liblbs_core.so:system/lib/liblbs_core.so \
     $(LOCAL_PATH)/ubuntu/libs/libloc_api_v02.so:system/lib/libloc_api_v02.so \
     $(LOCAL_PATH)/ubuntu/libs/liblocationservice_glue.so:system/lib/liblocationservice_glue.so \
     $(LOCAL_PATH)/ubuntu/libs/liblocationservice.so:system/lib/liblocationservice.so \
     $(LOCAL_PATH)/ubuntu/libs/libulp2.so:system/lib/libulp2.so \
     $(LOCAL_PATH)/ubuntu/libs/libdataitems.so:system/lib/libdataitems.so \
     $(LOCAL_PATH)/ubuntu/libs/libdrplugin_client.so:system/lib/libdrplugin_client.so \
     $(LOCAL_PATH)/ubuntu/libs/libDRPlugin.so:system/lib/libDRPlugin.so \
     $(LOCAL_PATH)/ubuntu/libs/libevent_observer.so:system/lib/libevent_observer.so \
     $(LOCAL_PATH)/ubuntu/libs/libizat_core.so:system/lib/libizat_core.so \
     $(LOCAL_PATH)/ubuntu/libs/liblowi_client.so:system/lib/liblowi_client.so \
     $(LOCAL_PATH)/ubuntu/libs/libI420colorconvert.so:system/lib/libI420colorconvert.so \
     $(LOCAL_PATH)/ubuntu/libs/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
     $(LOCAL_PATH)/rootdir/system/halium/usr/share/fixup/fix_pulseaudio.sh:system/halium/usr/share/fixup/fix_pulseaudio.sh 
   
#     $(LOCAL_PATH)/rootdir/init_wlan_bt.sh:system/etc/init_wlan_bt.sh
 
#     $(LOCAL_PATH)/ubuntu/init_hcismd_up.sh:system/etc/init_hcismd_up.sh 
	


# Thermal
PRODUCT_PACKAGES += \
    thermal.msm8996
	
# Ubuntu Touch common USB initialization
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ubuntu/usb/setupusb:system/halium/usr/share/usbinit/setupusb \
	$(LOCAL_PATH)/ubuntu/usb/mtp-state.conf:system/halium/etc/init/mtp-state.conf


# Graphics
PRODUCT_PACKAGES += \
    libsdm-disp-apis



# Display
PRODUCT_PACKAGES += \
    copybit.msm8996 \
    gralloc.msm8996 \
    hwcomposer.msm8996 \
    memtrack.msm8996 \
    liboverlay \
    libtinyxml

PRODUCT_PACKAGES += \
    power.msm8996



# Haters gonna hate..
PRODUCT_CHARACTERISTICS := nosdcard

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8996 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libbthost_if \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
#    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
#    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml 
#    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
#    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \

#    $(LOCAL_PATH)/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \



PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha_z2_plus_hw.xml:system/etc/mixer_paths_tasha_z2_plus_hw.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha.xml:system/etc/mixer_paths_tasha.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha_z2_plus_hw.xml:system/etc/mixer_paths.xml 

# Ubuntu Overlay Files
#PRODUCT_COPY_FILES += \
#   $(LOCAL_PATH)/audio/mixer_paths.xml:system/ubuntu/etc/mixer_paths.xml \
#    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/ubuntu/etc/audio_platform_info.xml 
#    $(LOCAL_PATH)/audio/listen_platform_info.xml:system/ubuntu/etc/listen_platform_info.xml  





PRODUCT_COPY_FILES += \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml
     

# Thermal
PRODUCT_PACKAGES += \
    thermal.msm8996
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf


# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/fpc1020tp.kl:system/usr/keylayout/fpc1020tp.kl \
    $(LOCAL_PATH)/keylayout/goodix-ts.kl:system/usr/keylayout/goodix-ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/msm8996-tasha-mtp-snd-card_Button_Jack.kl:system/usr/keylayout/msm8996-tasha-mtp-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# misc
PRODUCT_COPY_FILES += \
	 $(LOCAL_PATH)/misc/egl.cfg:system/lib/egl/egl.cfg \
	 $(LOCAL_PATH)/misc/libGLES_android.so:system/lib/egl/libGLES_android.so 
	


# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service \
    fingerprint.msm8996


PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.qti_bsp.abi=1
	



# Ubuntu Touch additional packages
PRODUCT_PACKAGES += \
    libmedia_compat \
    minimediaservice \
    libaudioflingerglue \
    libminisf \
    miniafservice \
    libubuntu_application_api \
    direct_ubuntu_application_sensors_c_api_for_hybris_test \
    direct_ubuntu_application_sensors_for_hybris_test \
    direct_ubuntu_application_gps_c_api_for_hybris_test \
    libcamera_compat_layer \
    libmedia_compat_layer \
    libdroidmedia \
    libcameraservice\
    libui_compat_layer \
    libsf_compat_layer \
    libaudioflingerglue \
    camera_service


#droidmedia
MINIMEDIA_SENSORSERVER_DISABLE := 1

PRODUCT_PROPERTY_OVERRIDES += \
	mm.enable.sec.smoothstreaming=true \
	media.aac_51_output_enabled=true \
	media.stagefright.enable-player=true\
	media.stagefright.enable-http=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true \
	media.stagefright.enable-fma2dp=true \
	media.stagefright.enable-scan=true \
	mm.enable.qcom_parser=1048575 \
	av.debug.disable.pers.cache=true \
	mmp.enable.3g2=true

# Enable optional sensor types
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sensors.smd=true \
    ro.qti.sensors.game_rv=true \
    ro.qti.sensors.georv=true \
    ro.qti.sensors.smgr_mag_cal_en=true \
    ro.qti.sensors.step_detector=true \
    ro.qti.sensors.step_counter=true \
    ro.qti.sensors.tap=false \
    ro.qti.sensors.facing=false \
    ro.qti.sensors.tilt=false \
    ro.qti.sensors.amd=false \
    ro.qti.sensors.rmd=false \
    ro.qti.sensors.vmd=false \
    ro.qti.sensors.pedometer=true \
    ro.qti.sensors.pam=false \
    ro.qti.sdk.sensors.gestures=false \
    ro.qualcomm.bt.hci_transport=smd


#enable Codec 2.0

PRODUCT_PACKAGES += \
	libmedia_codecserviceregistrant \
	libqcodec2 \
	libstagefright_ccodec 

#MEDIA

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
   $(LOCAL_PATH)/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml


PRODUCT_PACKAGES += \
    e2fsck


# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVdecHevc \
    libstagefrighthw 




# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.bt.sh \
    init.target.rc \
    ueventd.qcom.rc \
    init.qcom.usb.rc 


# Camera
PRODUCT_PACKAGES += \
    libqomx_core \
    libmmcamera_interface \
    libmmjpeg_interface \
    mm-jpeg-interface-test 



# Camera configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1 \
    persist.camera.HAL3.enabled=0 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# TimeKeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep
	
# Wifi
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    readmac \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/fstman.ini:system/etc/wifi/fstman.ini

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/qca_cld/WCNSS_cfg.dat
     



# Haters gonna hate..
PRODUCT_CHARACTERISTICS := nosdcard

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# Offline charging
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.enable_boot_charger_mode=1 


# telepathy-ofono quirks
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.t-o.quirk.forcesink=sink.primary_output \
#    ro.t-o.quirk.forcesource=source.record_24_primary_input \
#    ubuntu.widi.supported=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.t-o.quirk.forcesink=sink.primary \
    ro.t-o.quirk.forcesource=source.record_24_primary
    


$(call inherit-product, vendor/zuk/msm8996-common/msm8996-common-vendor.mk)

