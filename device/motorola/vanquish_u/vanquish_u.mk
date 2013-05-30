$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/vanquish_u/vanquish_u-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/vanquish_u/overlay

# IDC
PRODUCT_COPY_FILES += device/motorola/vanquish_u/idc/melfas_45_7_15.fw:recovery/root/vendor/firmware/melfas_45_7_15.fw
PRODUCT_COPY_FILES += device/motorola/vanquish_u/idc/melfas-ts.idc:recovery/root/vendor/firmware/melfas-ts.idc


LOCAL_PATH := device/motorola/vanquish_u
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := vanquish_u
PRODUCT_DEVICE := vanquish_u
