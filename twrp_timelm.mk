#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from timelm device
$(call inherit-product, device/lge/timelm/device.mk)

PRODUCT_DEVICE := timelm
PRODUCT_NAME := twrp_timelm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-V600
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="timelm-user 11 RKQ1.210420.001 221450430847d release-keys"

BUILD_FINGERPRINT := lge/timelm/timelm:11/RKQ1.210420.001/221450430847d:user/release-keys
