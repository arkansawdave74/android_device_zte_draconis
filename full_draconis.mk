#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Vendor Blobs
$(call inherit-product, vendor/zte/draconis/draconis-vendor-blobs.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml



# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)


# Camera
PRODUCT_PACKAGES += \
    libxml2

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Display
PRODUCT_PACKAGES += \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226

# Adreno GPU
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
$(LOCAL_PATH)/prebuilts/adreno/vendor/lib/libscale.so:system/vendor/lib/libscale.so \
$(LOCAL_PATH)/prebuilts/adreno/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
$(LOCAL_PATH)/prebuilts/adreno/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
$(LOCAL_PATH)/prebuilts/adreno/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
$(LOCAL_PATH)/prebuilts/adreno/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw

#Perf
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/prebuilts/perf/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem
PRODUCT_PACKAGES += \
    setup_fs

# GPS
PRODUCT_PACKAGES += \
    gps.msm8226

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8226

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    qcmediaplayer \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8226

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd_default.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf


PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg


# DT Image
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/dt.img:dt.img \

# Kernel Ramdisk
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
$(LOCAL_PATH)/ramdisk/icon_ftm.png:root/icon_ftm.png \
$(LOCAL_PATH)/ramdisk/init.class_main.sh:root/init.class_main.sh \
$(LOCAL_PATH)/ramdisk/init.ftm.rc:root/init.ftm.rc \
$(LOCAL_PATH)/ramdisk/init.mdm.sh:root/init.mdm.sh \
$(LOCAL_PATH)/ramdisk/init.offcharge.rc:root/init.offcharge.rc \
$(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
$(LOCAL_PATH)/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
$(LOCAL_PATH)/ramdisk/init.qcom.factory.sh:root/init.qcom.factory.sh \
$(LOCAL_PATH)/ramdisk/init.qcom.ftm.rc:root/init.qcom.ftm.rc \
$(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
$(LOCAL_PATH)/ramdisk/init.qcom.ril.sh:root/init.qcom.ril.sh \
$(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
$(LOCAL_PATH)/ramdisk/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
$(LOCAL_PATH)/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
$(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
$(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
$(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_10.png:root/res/images/charger/battery_10.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_6.png:root/res/images/charger/battery_6.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_7.png:root/res/images/charger/battery_7.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_8.png:root/res/images/charger/battery_8.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_9.png:root/res/images/charger/battery_9.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_full.png:root/res/images/charger/battery_full.png \
$(LOCAL_PATH)/ramdisk/res/images/charger/battery_low.png:root/res/images/charger/battery_low.png \
$(LOCAL_PATH)/ramdisk/sbin/trigger_modemload:root/sbin/trigger_modemload \
$(LOCAL_PATH)/ramdisk/sbin/usbconfig:root/sbin/usbconfig \
$(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := draconis
PRODUCT_NAME := full_draconis
PRODUCT_BRAND := zte
PRODUCT_MODEL := draconis
PRODUCT_MANUFACTURER := zte
