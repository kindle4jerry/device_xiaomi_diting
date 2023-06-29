#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from mondrian device.
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Rom Stuff
EXTRA_UDFPS_ANIMATIONS := true
DERP_BUILDTYPE := Official
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

## Device identifier
PRODUCT_DEVICE := mondrian
PRODUCT_NAME := derp_mondrian
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
