#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r5x device
$(call inherit-product, device/realme/r5x/device.mk)

PRODUCT_DEVICE := r5x
PRODUCT_NAME := omni_r5x
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 5 Series
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="AP1A.240405.002.A1"

BUILD_FINGERPRINT := realme/lineage_r5x/r5x:14/AP1A.240405.002.A1/eng.ext.20240417.181455:userdebug/release-keys
