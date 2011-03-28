$(call inherit-product, device/htc/speedy/speedy.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)
$(call inherit-product, vendor/evervolv/products/common-hwkb.mk)


#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_speedy
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := speedy
PRODUCT_MODEL := PG06100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRI40 PRODUCT_NAME=htc_speedy BUILD_FINGERPRINT=sprint/htc_speedy/speedy/speedy:2.2/FRF91/291627:user/release-keys PRIVATE_BUILD_DESC="1.17.651.1 CL291627 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME = Artis

BUILD_VERSION := 1.0.2a4-Wimacs

#BUILD_VERSION := v1.0.2a4-Wimacs-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Evo Shift 4G\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Extra speedy overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/speedy

# Copy hdpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
