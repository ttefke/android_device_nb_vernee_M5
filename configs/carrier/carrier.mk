# Copy carrier configuration files
PRODUCT_COPY_FILES += \
    device/nb/vernee_M5/configs/carrier/spn-conf.xml:system/etc/spn-conf.xml \
    device/nb/vernee_M5/configs/carrier/cdma_ecc_list.xml:system/vendor/etc/cdma_ecc_list.xml \
    device/nb/vernee_M5/configs/carrier/cdma_ecc_list_ss.xml:system/vendor/etc/cdma_ecc_list_ss.xml \
    device/nb/vernee_M5/configs/carrier/ecc_list.xml:system/vendor/etc/ecc_list.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-efgid1.xml:system/vendor/etc/virtual-spn-conf-by-efgid1.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-efpnn.xml:system/vendor/etc/virtual-spn-conf-by-efpnn.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-efspn.xml:system/vendor/etc/virtual-spn-conf-by-efspn.xml \
    device/nb/vernee_M5/configs/carrier/virtual-spn-conf-by-imsi.xml:system/vendor/etc/virtual-spn-conf-by-imsi.xml
