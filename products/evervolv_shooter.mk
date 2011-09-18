# Inherit AOSP device configuration for shooter.
$(call inherit-product, device/htc/shooter/shooter.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/evervolv/products/common.mk)

# Inherit WiMAX stuff
$(call inherit-product, vendor/evervolv/products/wimax.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_shooter
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG8610000
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=sprint/htc_shooter/shooter:2.3.3/GRI40/83920:user/release-keys PRIVATE_BUILD_DESC="1.13.651.7 CL83920 release-keys"

# Extra shooter overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/shooter

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/qhd

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Neco

ifeq ($(NIGHTLY_BUILD),true)
    BUILD_VERSION := v1.2.0a1-$(shell date +%m%d%Y)-NIGHTLY
else
    BUILD_VERSION := 1.2.0a1
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Evo 3D\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
