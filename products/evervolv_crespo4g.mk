$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_ID=GRJ90 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/sojus/crespo4g:2.3.5/GRJ90/138666:user/release-keys PRIVATE_BUILD_DESC="sojus-user 2.3.5 GRJ90 138666 release-keys" BUILD_NUMBER=138666

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/crespo4g

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Lucis
ifeq ($(NIGHTLY_BUILD),true)
    BUILD_VERSION := v1.2.0a1-$(shell date +%m%d%Y)-NIGHTLY
else
    BUILD_VERSION := 1.2.0a1
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Nexus S 4G\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#
# Copy crespo specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
