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

# Copy carrier configuration files
PRODUCT_COPY_FILES += \
    device/nb/vernee_M5/configs/carrier/cdma_ecc_list.xml:system/vendor/etc/cdma_ecc_list.xml \
    device/nb/vernee_M5/configs/carrier/cdma_ecc_list_ss.xml:system/vendor/etc/cdma_ecc_list_ss.xml \
    device/nb/vernee_M5/configs/carrier/ecc_list.xml:system/vendor/etc/ecc_list.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-efgid1.xml:system/vendor/etc/virtual-spn-conf-by-efgid1.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-efpnn.xml:system/vendor/etc/virtual-spn-conf-by-efpnn.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-efspn.xml:system/vendor/etc/virtual-spn-conf-by-efspn.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-imsi.xml:system/vendor/etc/virtual-spn-conf-by-imsi.xml
