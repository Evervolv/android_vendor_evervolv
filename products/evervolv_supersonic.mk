$(call inherit-product, device/htc/supersonic/supersonic.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78C PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic/supersonic:2.2/FRF91/294884:user/release-keys PRIVATE_BUILD_DESC="3.70.651.1 CL294884 release-keys"

# Set up the code name & Build version
PRODUCT_CODENAME = Evervolv-Acies

BUILD_VERSION := 1.0.1b1

#BUILD_VERSION := v1.0.1b1-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\nThis is a test MOTD for the Evo 4G. This will be followed by a complete install message for anyone flashing an evervolv rom."

#TODO - FIXME
# Extra Supersonic overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/supersonic

# Add the Torch app
#PRODUCT_PACKAGES += Torch

#TODO - FIXME
# Copy supersonic specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
