# Generic Evervolv product
PRODUCT_NAME := evervolv
PRODUCT_BRAND := evervolv
PRODUCT_DEVICE := generic

# PRODUCT_PACKAGES += ADWLauncher

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
    EVParts \
    FileManager 

# Extra tools in Evervolv
PRODUCT_PACKAGES += \
    openvpn



# Common Evervolv overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/common

# Bring in some audio files
#include frameworks/base/data/sounds/AudioPackage4.mk
#include frameworks/base/data/sounds/AudioPackage5.mk

PRODUCT_COPY_FILES += \
    vendor/evervolv/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/evervolv/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/evervolv/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/evervolv/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/evervolv/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/evervolv/prebuilt/common/etc/profile:system/etc/profile \
    vendor/evervolv/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/evervolv/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/evervolv/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/evervolv/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/evervolv/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/evervolv/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/evervolv/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/evervolv/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/evervolv/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/evervolv/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/evervolv/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/evervolv/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/evervolv/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

#Temporarily use this prebuilt Superuser.apk
PRODUCT_COPY_FILES += \
    vendor/evervolv/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk

PRODUCT_COPY_FILES += \
    vendor/evervolv/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd
#    vendor/evervolv/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

