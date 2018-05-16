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

# Thermal configuration
PRODUCT_COPY_FILES += \
    device/nb/vernee_M5/configs/thermal/ht120.mtc:system/vendor/.tp/.ht120.mtc \
    device/nb/vernee_M5/configs/thermal/thermal_meta.conf:system/vendor/.tp/.thermal_meta.conf \
    device/nb/vernee_M5/configs/thermal/thermal_policy_00:system/vendor/.tp/.thermal_policy_00 \
    device/nb/vernee_M5/configs/thermal/thermal_policy_01:system/vendor/.tp/.thermal_policy_01 \
    device/nb/vernee_M5/configs/thermal/thermal_policy_02:system/vendor/.tp/.thermal_policy_02 \
    device/nb/vernee_M5/configs/thermal/thermal.conf:system/vendor/.tp/thermal.conf \
    device/nb/vernee_M5/configs/thermal/thermal.off.conf:system/vendor/.tp/thermal.off.conf
