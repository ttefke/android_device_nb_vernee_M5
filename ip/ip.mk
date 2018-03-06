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

# Copy configuration files for internet access
PRODUCT_COPY_FILES += \
    device/nb/vernee_M5/ip/clatd.conf:system/etc/clatd.conf \
    device/nb/vernee_M5/ip/custom.conf:system/vendor/etc/custom.conf \
    device/nb/vernee_M5/ip/ipsec.conf:system/vendor/etc/ipsec/ipsec.conf \
    device/nb/vernee_M5/ip/strongswan.conf:system/vendor/etc/ipsec/strongswan.conf \
    device/nb/vernee_M5/ip/updown_script:system/vendor/etc/ipsec/updown_script \
    device/nb/vernee_M5/ip/wod_cust.conf:system/vendor/etc/ipsec/wod_cust.conf \
    device/nb/vernee_M5/ip/wod_optr.conf:system/vendor/etc/ipsec/wod_optr.conf \
    device/nb/vernee_M5/ip/openssl.cnf:system/vendor/etc/ipsec/ssl/openssl.cnf \
    device/nb/vernee_M5/ip/slp_conf:system/vendor/etc/slp_conf \
    device/nb/vernee_M5/ip/dhcp6c.conf:system/vendor/etc/wide-dhcpv6/dhcp6c.conf \
    device/nb/vernee_M5/ip/dhcp6c.script:system/vendor/etc/wide-dhcpv6/dhcp6c.script \
    device/nb/vernee_M5/ip/dhcp6cDNS.conf:system/vendor/etc/wide-dhcpv6/dhcp6cDNS.conf \
    device/nb/vernee_M5/ip/dhcp6s.conf:system/vendor/etc/wide-dhcpv6/dhcp6s.conf \
    device/nb/vernee_M5/ip/radvd.conf:system/vendor/etc/radvd/radvd.conf \
    device/nb/vernee_M5/ip/radvd_chiptest.conf:system/vendor/etc/radvd/radvd_chiptest.conf
