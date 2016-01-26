# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
    device/huawei/honor7/kernel:kernel \
    device/huawei/honor7/init.recovery.huawei.rc:root/init.recovery.huawei.rc	

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := honor7
PRODUCT_NAME := omni_honor7
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
PRODUCT_MODEL := PLK-L01
