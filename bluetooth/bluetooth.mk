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

# Copy bluetooth configuration files
PRODUCT_COPY_FILES += \
    device/nb/vernee_M5/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    device/nb/vernee_M5/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    device/nb/vernee_M5/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
    device/nb/vernee_M5/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc
