# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/supersonic.mk)

# Inherit some common stuffs.
$(call inherit-product, vendor/cyanogen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := evervolv_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78 PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic/supersonic:2.2/FRF91/252548:user/release-keys PRIVATE_BUILD_DESC="3.29.651.5 CL252548 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_supersonic_defconfig

# Extra Supersonic overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/supersonic

# Add the Torch app
#PRODUCT_PACKAGES += Torch

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Acies-v1.0.0-a0-$(shell date +%m%d%Y)-NIGHTLY-Supersonic
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Evervolv-Acies-v1.0.0-a0-Supersonic
endif

#
# Copy supersonic specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
