$(call inherit-product, device/nvidia/harmony/device_harmony.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)
$(call inherit-product, vendor/evervolv/products/common-tabs.mk)
#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_harmony
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := harmony
PRODUCT_MODEL := GTablet
PRODUCT_MANUFACTURER := malata
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=smb_a1002 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Ferus
ifeq ($(NIGHTLY_BUILD),true)
    BUILD_VERSION := v1.2.0a1-$(shell date +%m%d%Y)-NIGHTLY
else
    BUILD_VERSION := 1.2.0a1
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Viewsonic G Tablet\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Extra Harmony overlay
#
# TODO - not needed right now, but a must have.
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/evervolv/overlay/harmony \
    vendor/evervolv/overlay/tablet

# Add the Torch app
#PRODUCT_PACKAGES += Torch


# Copy mdpi specific prebuilt files
#
# TODO - need to get this working properly.
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
