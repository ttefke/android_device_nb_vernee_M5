# Copy bluetooth configuration files
PRODUCT_COPY_FILES += \
    device/nb/vernee_M5/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    device/nb/vernee_M5/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    device/nb/vernee_M5/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
    device/nb/vernee_M5/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc
