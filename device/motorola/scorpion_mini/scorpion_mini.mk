$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/scorpion_mini/scorpion_mini-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/scorpion_mini/overlay

# IDC
#PRODUCT_COPY_FILES += $(DEVICE_FOLDER)/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc
PRODUCT_COPY_FILES += device/motorola/scorpion_mini/idc/atmxt-i2c.idc:recovery/root/vendor/firmware/atmxt-i2c.idc
PRODUCT_COPY_FILES += device/motorola/scorpion_mini/idc/atmxt-r2.tdat:recovery/root/vendor/firmware/atmxt-r2.tdat


LOCAL_PATH := device/motorola/scorpion_mini
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := scorpion_mini
PRODUCT_DEVICE := scorpion_mini
