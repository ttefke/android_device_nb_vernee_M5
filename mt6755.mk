#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 Tobias Tefke
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

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Root
PRODUCT_PACKAGES += \
    enableswap.sh \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    fstab.mt6755 \
    init \
    init.aee.rc \
    init.common_svc.rc \
    init.connectivity.rc \
    init.environ.rc \
    init.environ.mt6755.rc \
    init.epdg.rc \
    init.microtrust.rc \
    init.modem.rc \
    init.mt6755.rc \
    init.mt6755.usb.rc \
    init.project.rc \
    init.rc \
    init.recovery.mt6755.rc \
    init.rilproxy.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    init.volte.rc \
    init.zygote32.rc \
    init.zygote64_32.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    ueventd.mt6755.rc \
    ueventd.rc \
    verity_key \
    atStartCit.sh \
    verity_red_1.png \
    verity_red_2.png \
    fuelgauged_static \
    multi_init \
    slideshow \
    ueventd \
    watchdogd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/sbin/fuelgauged_static:recovery/root/sbin/fuelgauged_static

ifneq ($(TARGET_BUILD_VARIANT), user)
# ADB Debugging
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0
endif

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudiopolicymanagerdefault \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml \
    libfs_mgr

# Display
PRODUCT_PACKAGES += \
    libion

# FM
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib/hw/radio.fm.mt6735.so:system/lib/hw/radio.fm.mt6755.so

# GPS
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_PACKAGES += \
    libcurl \
    libepos \
    gps.mt6755

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
    $(LOCAL_PATH)/configs/slp_conf:system/etc/slp_conf \
    $(LOCAL_PATH)/configs/WMT_SOC.cfg:system/vendor/firmware/WMT_SOC.cfg

# Mediatek platform
PRODUCT_PACKAGES += \
   libmtk_symbols

# Messaging
PRODUCT_PACKAGES += \
    messaging \
    Stk

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6755

# Radio dependencies
PRODUCT_PACKAGES += \
    muxreport \
    terservice

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/bin/mtkrild:system/bin/mtkrild \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib/libmal.so:system/lib/libmal.so \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib64/libmal.so:system/lib64/libmal.so \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib/libmdfx.so:system/lib/libmdfx.so \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib64/libmdfx.so:system/lib64/libmdfx.so \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib/librilmtk.so:system/lib/librilmtk.so \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib64/librilmtk.so:system/lib64/librilmtk.so \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib/mtk-ril.so:system/lib/mtk-ril.so \
    $(LOCAL_PATH)/prebuilts/proprietary/wileyfox/porridge/lib64/mtk-ril.so:system/lib64/mtk-ril.so

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/throttle.sh:system/vendor/etc/throttle.sh

# Charger Mode
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(TARGET_BUILD_VARIANT), user)
# Mediatek logging service
PRODUCT_PACKAGES += \
    mobile_log_d \
    netdiag \
    tcpdump
endif

# Key Layouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayouts/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayouts/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg

ifeq ($(NXP_SMARTPA_SUPPORT), yes)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf_NXP:system/etc/audio_policy.conf
else
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf
endif

# Build proprietary bits when available
ifneq ($(MTKPATH),)
$(call inherit-product-if-exists, $(MTKPATH)/config/mt6755.mk)
endif
