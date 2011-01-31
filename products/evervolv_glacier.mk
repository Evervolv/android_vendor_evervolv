$(call inherit-product, device/htc/glacier/glacier.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/evervolv/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_glacier
PRODUCT_BRAND := tmobile
PRODUCT_DEVICE := glacier
PRODUCT_MODEL := HTC Glacier
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_glacier BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRH78 BUILD_FINGERPRINT=tmobile/htc_glacier/glacier/glacier:2.2.1/FRG83/277036:user/release-keys PRIVATE_BUILD_DESC="1.17.531.2 CL277036 release-keys"

# Set up the code name & Build version
PRODUCT_CODENAME = Evervolv-Spolio

BUILD_VERSION := 1.0.1a1

#BUILD_VERSION := v1.0.1a1-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\nThis is a test MOTD for the Tmobile My Touch 4G. This will be followed by a complete install message for anyone flashing an evervolv rom."

# Extra glacier overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/glacier

# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
