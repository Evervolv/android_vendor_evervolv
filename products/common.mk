# Generic cyanogenmod product
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

# CyanogenMod specific product packages
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

ifdef CYANOGEN_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/cyanogen/proprietary/CarHomeGoogle.apk:./system/app/CarHomeGoogle.apk \
        vendor/cyanogen/proprietary/CarHomeLauncher.apk:./system/app/CarHomeLauncher.apk \
        vendor/cyanogen/proprietary/Facebook.apk:./system/app/Facebook.apk \
        vendor/cyanogen/proprietary/GenieWidget.apk:./system/app/GenieWidget.apk \
        vendor/cyanogen/proprietary/Gmail.apk:./system/app/Gmail.apk \
        vendor/cyanogen/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
        vendor/cyanogen/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
        vendor/cyanogen/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
        vendor/cyanogen/proprietary/GoogleFeedback.apk:./system/app/GoogleFeedback.apk \
        vendor/cyanogen/proprietary/GooglePartnerSetup.apk:./system/app/GooglePartnerSetup.apk \
        vendor/cyanogen/proprietary/GoogleQuickSearchBox.apk:./system/app/GoogleQuickSearchBox.apk \
        vendor/cyanogen/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
        vendor/cyanogen/proprietary/HtcCopyright.apk:./system/app/HtcCopyright.apk \
        vendor/cyanogen/proprietary/HtcEmailPolicy.apk:./system/app/HtcEmailPolicy.apk \
        vendor/cyanogen/proprietary/HtcSettings.apk:./system/app/HtcSettings.apk \
        vendor/cyanogen/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/cyanogen/proprietary/Maps.apk:./system/app/Maps.apk \
        vendor/cyanogen/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/cyanogen/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
        vendor/cyanogen/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/cyanogen/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
        vendor/cyanogen/proprietary/PassionQuickOffice.apk:./system/app/PassionQuickOffice.apk \
        vendor/cyanogen/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/cyanogen/proprietary/Street.apk:./system/app/Street.apk \
        vendor/cyanogen/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/cyanogen/proprietary/Twitter.apk:./system/app/Twitter.apk \
        vendor/cyanogen/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/cyanogen/proprietary/VoiceSearch.apk:./system/app/VoiceSearch.apk \
        vendor/cyanogen/proprietary/YouTube.apk:./system/app/YouTube.apk \
        vendor/cyanogen/proprietary/googlevoice.apk:./system/app/googlevoice.apk \
        vendor/cyanogen/proprietary/kickback.apk:./system/app/kickback.apk \
        vendor/cyanogen/proprietary/soundback.apk:./system/app/soundback.apk \
        vendor/cyanogen/proprietary/talkback.apk:./system/app/talkback.apk \
        vendor/cyanogen/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/cyanogen/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/cyanogen/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/cyanogen/proprietary/libspeech.so:./system/lib/libspeech.so
else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch \
        LatinIME
endif
