# Generic Evervolv product
PRODUCT_NAME := evervolv
PRODUCT_BRAND := evervolv
PRODUCT_DEVICE := generic

# PRODUCT_PACKAGES += ADWLauncher

# Add ROMManager build property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=DonMessWivIt.ogg

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Evervolv specific product packages
PRODUCT_PACKAGES += \

# xxxxx

# Enable FM radio if supported
#ifeq ($(BOARD_HAVE_FM_RADIO), true)
#    PRODUCT_PACKAGES += FM
#endif


# Common CM overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/common

# Bring in some audio files
#include frameworks/base/data/sounds/AudioPackage4.mk
#include frameworks/base/data/sounds/AudioPackage5.mk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

