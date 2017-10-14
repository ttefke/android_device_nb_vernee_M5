#
# Copyright 2014 The Android Open-Source Project
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

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#LOCAL_KERNEL := device/vernee/M5/prebuilt/kernel/kernel #TODO: Add prebuilt kernel
#else
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#	$(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/vernee/M5/device-vendor.mk)

# Inherit from MTK_PROJECT_CONFIG
MTK_PROJECT_CONFIG ?= device/nb/vernee_M5/configs/ProjectConfig.mk)
include $(MTK_PROJECT_CONFIG)

# Charger and USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.usb.vid=2970

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init
PRODUCT_COPY_FILES += \ #TODO DATEIEN DURCH ORIGINALE ERSETZEN
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
$(call inherit-product, device/nb/vernee_M5/configs/audio/audio_param/audio.mk)

# Bluetooth
$(call inherit-product, device/nb/vernee_M5/bluetooth/bluetooth.mk)

# Carrier configs
$(call inherit-product, device/nb/vernee_M5/configs/carrier/carrier.mk)

# Media
$(call inherit-product, device/nb/vernee_M5/media/media.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720


# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# GPS
PRODUCT_PACKAGES += \
    YGPS

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Dalvik configurations
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-4096-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-4096-hwui-memory.mk)

# Versioning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mediatek.version.release=$(MTK_BUILD_VERNO) \
    ro.mediatek.chip_ver=$(MTK_CHIP_VER)

# Inherit the rest from mt6755-common
$(call inherit-product, device/nb/vernee_M5/mt6755.mk)
