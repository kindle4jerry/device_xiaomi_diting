#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product-if-exists, vendor/gms/products/gms.mk)

# Inherit some common PixelExperience stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
#TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_USES_AOSP_RECOVERY := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from diting device.
$(call inherit-product, device/xiaomi/diting/device.mk)

## Device identifier
PRODUCT_DEVICE := diting
PRODUCT_NAME := aosp_diting
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi K50 Ultra

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="diting"

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
