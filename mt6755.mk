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

# Root
PRODUCT_PACKAGES += \
    enableswap.sh \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    file_contexts.bin \
    fstab.mt6755 \
    init.rc \
    init.aee.rc \
    init.common_svc.rc \
    init.connectivity.rc \
    init.environ.rc \
    init.epdg.rc \
    init.mal.rc \
    init.microtrust.rc \
    init.modem.rc \
    init.mt6755.rc \
    init.mt6755.usb.rc \
    init.project.rc \
    init.recovery.mt6755.rc \
    init.rilproxy.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    init.volte.rc \
    init.wod.rc \
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

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/sbin/fuelgauged_static:recovery/root/sbin/fuelgauged_static

# Sepolicy
PRODUCT_PACKAGES += \
    sepolicy

# init
PRODUCT_PACKAGES += \
    libinit \
    init

# Health daemon
PRODUCT_PACKAGES += \
    healthd

ifneq ($(TARGET_BUILD_VARIANT), user)
# ADB Debugging
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0 \
    persist.service.adb.enable=1
endif

# Audio
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio.r_submix.default \
    audio.a2dp.default \
    audio.usb.default \
    libaudiopolicymanagerdefault \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml \

# Display
PRODUCT_PACKAGES += \
    libion

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# FM
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# FS
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# GPS
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_PACKAGES += \
    libcurl \
    libepos

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/vendor/etc/agps_profiles_conf2.xml \
    $(LOCAL_PATH)/configs/WMT_SOC.cfg:system/vendor/firmware/WMT_SOC.cfg

# Mediatek platform
PRODUCT_PACKAGES += \
   libmtk_symbols

# Messaging
PRODUCT_PACKAGES += \
    messaging \
    Stk

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# Sensor
PRODUCT_PACKAGES += \
    libem_sensor_jni

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

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

# XML
PRODUCT_PACKAGES += \
    libxml2
