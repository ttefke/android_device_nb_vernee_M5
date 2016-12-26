#
# Copyright (C) 2016 The CyanogenMod Project
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

ifneq ($(MTKPATH),)
-include $(MTKPATH)/BoardConfigVendor.mk
endif


TARGET_CYANOGEN_COMMON := mt6755

COMMON_PATH := device/cyanogen/mt6755-common
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

TARGET_BOARD_PLATFORM ?= mt6755

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

BOARD_FLASH_BLOCK_SIZE := 4096

# Common properties
TARGET_SYSTEM_PROP := $(COMMON_PATH)/system.prop

# FSTAB
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/fstab.mt6755

# Audio
USE_CUSTOM_AUDIO_POLICY := 1
BOARD_USES_MTK_AUDIO := true

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := 0
BOARD_CONNECTIVITY_MODULE := conn_soc

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += $(COMMON_PATH)/cmhw

ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
		WITH_DEXPREOPT ?= true
  endif
endif

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
VSYNC_EVENT_PHASE_OFFSET_NS := -8000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := -8000000
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.5.0

# Mediatek support
BOARD_USES_MTK_HARDWARE := true

# GPS
ifeq ($(MTK_GPS_SUPPORT), yes)
    BOARD_GPS_LIBRARIES := true
else
    BOARD_GPS_LIBRARIES := false
endif

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true

# RIL
BOARD_RIL_CLASS := ../../../device/cyanogen/mt6755-common/ril

# Releasetools
#TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)

# SELinux
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy

# Wireless
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Release Tools
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)

# Misc
EXTENDED_FONT_FOOTPRINT := true

# TWRP
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_MAX_BRIGHTNESS := 255
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/userdata" # i think this isn't used anymore
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data =ordered"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
