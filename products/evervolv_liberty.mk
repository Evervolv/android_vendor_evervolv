# Inherit AOSP device configuration for liberty.
$(call inherit-product, device/htc/liberty/liberty.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/evervolv/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/evervolv/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_liberty
PRODUCT_BRAND := htc
PRODUCT_DEVICE := liberty
PRODUCT_MODEL := Liberty
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_liberty BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

PRODUCT_CODENAME := Intus
BUILD_VERSION := 1.2.0a2
#BUILD_VERSION := v1.2.0a2-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/evervolv/prelink-linux-arm-msm722x.map

# Broadcom FM radio
#$(call inherit-product, vendor/evervolv/products/bcm_fm_radio.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n------------MESSAGE-------------\nThank you for choosing Evervolv\n  for your HTC Aria\nPlease visit us at \#evervolv on:\n  irc.freenode.net\nFollow @preludedrew for the\n  latest Evervolv updates\nGet the latest rom at\n  http://www.evervolv.com\n--------------------------------\n"

#
# Copy liberty specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
