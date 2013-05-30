## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vanquish

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/vanquish/vanquish.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vanquish
PRODUCT_NAME := cm_vanquish
PRODUCT_BRAND := motorola
PRODUCT_MODEL := vanquish
PRODUCT_MANUFACTURER := motorola
