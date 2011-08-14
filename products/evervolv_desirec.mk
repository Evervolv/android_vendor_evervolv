# Inherit AOSP device configuration for desirec.
$(call inherit-product, device/htc/desirec/desirec.mk)

#
# Inherit some common evervolv stuff.
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
PRODUCT_NAME := evervolv_desirec
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := desirec
PRODUCT_MODEL := ERIS
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Overlay for lockscreen_carrier_default
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/desirec

# Enable Windows Media
WITH_WINDOWS_MEDIA := true

#
# Set up the code name & Build version
PRODUCT_CODENAME := Eligo
BUILD_VERSION := 1.2.0b1
#BUILD_VERSION := v1.2.0b1$(shell date +%m%d%Y)-NIGHTLY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC Eris\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#
# Set product specific overlay and prelinker map
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/desirec
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/evervolv/prelink-linux-arm-heroc.map

#
# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
