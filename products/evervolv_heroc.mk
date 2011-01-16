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
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRH78 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

# Set up the code name & Build version
PRODUCT_CODENAME := Evervolv-Ignis

BUILD_VERSION := 1.0.1a1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Evervolv-Ignis-v1.0.1a2-Heroc

# Extra overlay for Gallery3D orientation hack
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/heroc


#
# Copy dream/sapphire specific prebuilt files
#
#PRODUCT_COPY_FILES +=  \
#    vendor/evervolv/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
