# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/supersonic.mk)

# Inherit some common stuffs.
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78 PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic/supersonic:2.2/FRF91/294884:user/release-keys PRIVATE_BUILD_DESC=Evervolv-AOSP

# Set up the code name & Build version

PRODUCT_CODENAME := Evervolv-Acies
BUILD_VERSION := 1.0.0.0a17


#TODO - FIXME
# Extra Supersonic overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/supersonic

# Add the Torch app
#PRODUCT_PACKAGES += Torch

#
# Set ro.modversion
#

ifdef NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Acies-v1.0.0-a0-$(shell date +%m%d%Y)-NIGHTLY-Supersonic
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Acies-v1.0.0-a0-Supersonic
endif

#TODO - FIXME
# Copy supersonic specific prebuilt files
#
#PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
