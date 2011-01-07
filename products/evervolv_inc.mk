$(call inherit-product, device/htc/inc/inc.mk)

# Inherit some common Evervolv stuff.
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_inc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78 PRODUCT_NAME=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.2/FRF91/264707:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=ADR6300 PRODUCT_MANUFACTURER=HTC

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Set up the code name & Build version

PRODUCT_CODENAME := Evervolv-Dives
BUILD_VERSION := 1.0.0.0a20

#TODO - FIXME
# Extra Passion overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/inc

#
# Set ro.modversion
#
ifdef NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Dives-v1.0.0-a0-$(shell date +%m%d%Y)-NIGHTLY-Inc
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Dives-v1.0.0-a0-Inc
endif

#TODO - FIXME
# Copy passion specific prebuilt files
#
#PRODUCT_COPY_FILES +=  \
#    vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
