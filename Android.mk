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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),vernee_M5)
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

# Some modules depend on $(KERNEL_OUT)/usr
# This folder is not created when using a prebuilt kernel
# So let's create it
ifneq ($(TARGET_PREBUILT_KERNEL),)
  $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr:
	mkdir -p $@
endif
