# Copy config files which aren't included by anything else
# ProjectConfig.mk and system.prop are included by other scripts
PRODUCT_COPY_FILES += \
    device/nb/vernee_M5/configs/Conf_MultipleTest.ini:/system/etc/Conf_MultipleTest.ini \
    device/nb/vernee_M5/configs/event-log-tags:/system/etc/event-log-tags \
    device/nb/vernee_M5/configs/mediacodec-seccomp.policy:/system/etc/seccomp_policy/mediacodec-seccomp.policy \
    device/nb/vernee_M5/configs/mediaextractor-seccomp.policy:/system/etc/seccomp_policy/mediaextractor-seccomp.policy \
    device/nb/vernee_M5/configs/aee-config:/system/vendor/etc/aee-config \
    device/nb/vernee_M5/configs/factory.ini:/system/vendor/etc/factory.ini \
    device/nb/vernee_M5/configs/mtklog-config.prop:/system/vendor/etc/mtklog-config.prop \
    device/nb/vernee_M5/configs/partition_permission.sh:/system/vendor/etc/partition_permission.sh \
    device/nb/vernee_M5/configs/perfcontable.txt:/system/vendor/etc/perfcontable.txt \
    device/nb/vernee_M5/configs/perfservapplist.txt:/system/vendor/etc/perfservapplist.txt \
    device/nb/vernee_M5/configs/perfservscntbl.txt:/system/vendor/etc/perfservscntbl.txt \
    device/nb/vernee_M5/configs/recovery.fstab:/system/vendor/etc/recovery.fstab \
    device/nb/vernee_M5/configs/emdlogger_usb_config.prop:system/vendor/etc/emdlogger_usb_config.prop
