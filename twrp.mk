#
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

COMMON_PATH := device/nb/vernee_M5

RECOVERY_VARIANT := twrp
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
DEVICE_RESOLUTION := 720x1280
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1280
TW_THEME := portrait_hdpi
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEVICE_VERSION := 0
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness/
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
TW_CUSTOM_POWER_BUTTON := 116
TW_ALWAYS_RMRF := true
TARGET_RECOVERY_INITRC := $(COMMON_PATH)/recovery/etc/init.recovery.mt6755.rc
TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := en-US 
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/recovery/etc/twrp.fstab
TW_EVENT_LOGGING := true # Temporary
