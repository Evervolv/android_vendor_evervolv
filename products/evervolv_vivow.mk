$(call inherit-product, device/htc/vivow/vivow.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_vivow
PRODUCT_BRAND := verizon_wwe
PRODUCT_DEVICE := vivow
PRODUCT_MODEL := Incredible 2
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivow BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=verizon_wwe/htc_vivow/vivow:2.3.3/GRI40/81006:user/release-keys PRIVATE_BUILD_DESC="2.18.605.4 CL81006 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Conor

BUILD_VERSION := 1.2.0a1

#BUILD_VERSION := v1.2.0a1$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Droid Incredible 2\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Extra vivow overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/vivow

# Add AicBootFix for vivow battery fix
PRODUCT_PACKAGES += AicBootFix

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
