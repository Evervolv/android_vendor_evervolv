$(call inherit-product, device/htc/vision/vision.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)
$(call inherit-product, vendor/evervolv/products/common-hwkb.mk)

# Include GSM stuff
$(call inherit-product, vendor/evervolv/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_vision
PRODUCT_BRAND := tmobile
PRODUCT_DEVICE := vision
PRODUCT_MODEL := HTC Vision
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vision BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=tmobile/htc_vision/vision/vision:2.2/FRF91/277427:user/release-keys PRIVATE_BUILD_DESC="1.22.531.8 CL277427 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Verus

BUILD_VERSION := 1.1.0a1

#BUILD_VERSION := v1.1.0a1-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC G2\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n

# Extra vision overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/vision

# Copy hdpip specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
