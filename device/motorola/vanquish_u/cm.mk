## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vanquish_u

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/vanquish_u/vanquish_u.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vanquish_u
PRODUCT_NAME := cm_vanquish_u
PRODUCT_BRAND := motorola
PRODUCT_MODEL := vanquish_u
PRODUCT_MANUFACTURER := motorola
