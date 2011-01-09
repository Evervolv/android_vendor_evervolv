$(call inherit-product, device/htc/heroc/heroc.mk)
$(call inherit-product, vendor/evervolv/products/common.mk)

PRODUCT_CODENAME := Evervolv-Ignis

NIGHTLY := true

# Set up the code name & Build version

ifdef NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Ignis-v1.0.0-a1-$(shell date +%m%d%Y)-NIGHTLY-Inc
	BUILD_VERSION := 1.0.0a1-$(shell date +%m%d%Y)-NIGHTLY
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Ignis-v1.0.0-a1-Inc
	BUILD_VERSION := 1.0.0a1
endif


#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_heroc
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := heroc
PRODUCT_MODEL := HERO200
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRH78 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

# Extra overlay for Gallery3D orientation hack
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/heroc


#
# Copy dream/sapphire specific prebuilt files
#
#PRODUCT_COPY_FILES +=  \
#    vendor/evervolv/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
