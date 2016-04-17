#
# Copyright (C) 2016 Diogo Ferreira
# Copyright (C) 2016 Alberto Guanti
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

LOCAL_PATH:= $(call my-dir)

define add-rootdir-targets
$(foreach target,$(1), \
   $(eval include $(CLEAR_VARS)) \
   $(eval LOCAL_MODULE       := $(target)) \
   $(eval LOCAL_MODULE_CLASS := ETC) \
   $(eval LOCAL_SRC_FILES    := $(target)) \
   $(eval LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)) \
   $(eval include $(BUILD_PREBUILT)))
endef

$(call add-rootdir-targets, \
    enableswap.sh \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    files_contexts.bin \
    fstab.mt6755 \
    fstab.vernee_M5 \
    init.aee.rc \
    init.common_svc.rc \
    init.connectivity.rc \
    init.epdg.rc \
    init.microtrust.rc \
    init.modem.rc \
    init.mt6755.rc \
    init.mt6755.usb.rc \
    init.project.rc \
    init.rilproxy.rc \
    init.volte.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    ueventd.mt6755.rc)

# atStartCit.sh
include $(CLEAR_VARS)
LOCAL_MODULE       := atStartCit.sh
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/bin/atStartCit.sh
LOCAL_MODULE_PATH  := $(TARGET_OUT)/bin
include $(BUILD_PREBUILT)

# warning images
include $(CLEAR_VARS)
LOCAL_MODULE       := verity_red_1.png
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := res/images/warning/verity_red_1.png
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/warning
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := verity_red_2.png
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := res/images/warning/verity_red_2.png
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/warning
include $(BUILD_PREBUILT)

# sbin: fuelgauged_static
include $(CLEAR_VARS)
LOCAL_MODULE       := fuelgauged_static
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := sbin/fuelgauged_static
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

# sbin: multi_init
include $(CLEAR_VARS)
LOCAL_MODULE       := multi_init
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := sbin/multi_init
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

# sbin: slideshow
include $(CLEAR_VARS)
LOCAL_MODULE       := slideshow
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := sbin/slideshow
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

# Vendor init files
include $(CLEAR_VARS)
LOCAL_MODULE       := init.mal.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := vendor/etc/init/init.mal.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT)/vendor/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.wod.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := vendor/etc/init/init.wod.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT)/vendor/etc/init
include $(BUILD_PREBUILT)
