$(call inherit-product, device/htc/inc/inc.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_inc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78C PRODUCT_NAME=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.2/FRF91/264707:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=ADR6300 PRODUCT_MANUFACTURER=HTC

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Set up the code name & Build version
PRODUCT_CODENAME := Evervolv-Dives

BUILD_VERSION := 1.0.1b1

#BUILD_VERSION := v1.0.1b1-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(PRODUCT_CODENAME)-$(BUILD_VERSION)

#TODO - FIXME
# Extra inc overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/inc


#TODO - FIXME
# Copy inc specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
