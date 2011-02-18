$(call inherit-product, device/htc/passion/full_passion.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)
$(call inherit-product, vendor/evervolv/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=FRG83D BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83D/75603:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83D 75603 release-keys"

# Set up the code name & Build version
PRODUCT_CODENAME = Perdo

BUILD_VERSION := 1.0.1a1

#BUILD_VERSION := v1.0.1a1-$(shell date +%m%d%Y)-NIGHTLY

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(PRODUCT_CODENAME)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\nThis is a test MOTD for the Google Nexus One. This will be followed by a complete install message for anyone flashing an evervolv rom."


# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

#TODO - FIXME
# Extra passion overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/passion

# Add the Torch app
#PRODUCT_PACKAGES += Torch

#TODO - FIXME
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/evervolv/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
