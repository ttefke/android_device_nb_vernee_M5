# Copy bluetooth configuration files
PRODUCT_COPY_FILES += \
    device/vernee/M5/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    device/vernee/M5/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    device/vernee/M5/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
    device/vernee/M5/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc
