# Inherit device configuration for pyramid.
$(call inherit-product, device/htc/pyramid/pyramid.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/evervolv/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/evervolv/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_pyramid
PRODUCT_BRAND := htc
PRODUCT_DEVICE := pyramid
PRODUCT_MODEL := Sensation
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT="tmous/htc_pyramid/pyramid:2.3.3/GRI40/70849:user/release-keys" PRVIATE_BUILD_DESC="1.29.531.2 CL70849 release-keys"

# Extra pyramid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/pyramid

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/qhd

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Aduro

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
