# Inherit AOSP device configuration for snowball.
$(call inherit-product, device/sola/pandaboard/pandaboard.mk)

# Inherit AOSP device configuration for generic target
$(call inherit-product, build/target/product/full.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_pandaboard
PRODUCT_BRAND := cyanogenmod
PRODUCT_DEVICE := pandaboard
PRODUCT_MODEL := CyanogenMod
PRODUCT_MANUFACTURER := CyanogenMod

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

# Generic modversion
ro.modversion=CyanogenMod-7
