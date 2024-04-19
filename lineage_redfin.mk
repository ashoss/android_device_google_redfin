#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/redfin/aosp_redfin.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/redfin/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5
PRODUCT_NAME := lineage_redfin

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 14 UP1A.231105.001 10817346 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:14/UP1A.231105.001/10817346:user/release-keys

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)

# Matrixx
MATRIXX_MAINTAINER := Ash
MATRIXX_CHIPSET := SM7250
MATRIXX_BATTERY := 4080mah
MATRIXX_DISPLAY := 1080x2340
TARGET_PIXEL_BOOT_ANIMATION_RES := 1080
WITH_GMS := true

# Target flags
TARGET_DISABLE_EPPE := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := false

# Pixel Flags
TARGET_IS_PIXEL := true
TARGET_PIXEL_STAND_SUPPORTED := true

#Build with Gapps
WITH_GMS := true

#Add Google Contacts, Dialer & Messaging 
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

#Exclude Packages
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true

