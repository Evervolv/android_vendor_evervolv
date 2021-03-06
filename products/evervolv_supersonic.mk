$(call inherit-product, device/htc/supersonic/supersonic.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)
# Inherit WiMAX stuff
$(call inherit-product, vendor/evervolv/products/wimax.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ90 PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic:2.3.3/GRI40/61076:user/release-keys PRIVATE_BUILD_DESC="4.24.651.1 CL61076 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Acies

ifeq ($(NIGHTLY_BUILD),true)
    BUILD_VERSION := v1.2.0b1-Wimacs-$(shell date +%m%d%Y)-NIGHTLY
else
    BUILD_VERSION := 1.2.0b1-Wimacs
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Evo 4G\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Extra Supersonic overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/supersonic

# Hot Reboot overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/hot_reboot

# Add the Torch app
#PRODUCT_PACKAGES += Torch


# Copy hdpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
