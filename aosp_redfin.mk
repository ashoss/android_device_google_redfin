#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/redfin/aospx_redfin.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/redfin/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5
PRODUCT_NAME := aosp_redfin

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 14 UP1A.231105.001.B2 11260668 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:14/UP1A.231105.001.B2/11260668:user/release-keys

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)

# PP Flags
TARGET_PIXEL_BOOT_ANIMATION_RES := 1440
TARGET_PREBUILT_GOOGLE_CAMERA := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

