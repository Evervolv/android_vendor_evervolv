$(call inherit-product, device/htc/speedy/speedy.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_speedy
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := speedy
PRODUCT_MODEL := PG06100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78 PRODUCT_NAME=htc_speedy BUILD_FINGERPRINT=sprint/htc_speedy/speedy/speedy:2.2/FRF91/291627:user/release-keys PRIVATE_BUILD_DESC="1.17.651.1 CL291627 release-keys"

# Set up the code name & Build version
PRODUCT_CODENAME = Evervolv-Artis

#BUILD_VERSION := 1.0.1a1

BUILD_VERSION := v1.0.1a1-$(shell date +%m%d%Y)-NIGHTLY

#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.build.romversion=Evervolv-Artis-v1.0.1a2-NIGHTLY-speedy 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(PRODUCT_CODENAME)-$(BUILD_VERSION)

#TODO - FIXME
# Extra speedy overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/speedy

#TODO - FIXME
# Copy speedy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
