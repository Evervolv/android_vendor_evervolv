$(call inherit-product, device/htc/heroc/heroc.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_heroc
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := heroc
PRODUCT_MODEL := HERO200
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Set up the code name & Build version
PRODUCT_CODENAME := Ignis

BUILD_VERSION := 1.2.0b1

#BUILD_VERSION := v1.2.0b1$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC Hero\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Extra overlay for Gallery3D orientation hack
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/heroc
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/evervolv/prelink-linux-arm-heroc.map

# Hot Reboot overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/hot_reboot

#
# Copy dream/sapphire specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
